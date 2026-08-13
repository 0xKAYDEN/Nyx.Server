using Microsoft.Extensions.Caching.Memory;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Server
{
    // <summary>
    /// This class encapsulates a Action processor. It stores Action handling methods in a red-black tree
    /// for faster switching between large amounts of handlers. This technique can replace a large switch
    /// statement for better efficiency.
    /// </summary>
    /// <typeparam name="THandlerType">The type of attribute defining handlers to be added.</typeparam>
    /// <typeparam name="TIdentity">The data type of the identity key for the handlers.</typeparam>
    /// <typeparam name="TCallbackSignature">The type of method to be stored as handlers.</typeparam>
    public sealed class CachedAttributeInvocation<TCallbackSignature, THandlerType, TIdentity>
        where THandlerType : Attribute
        where TIdentity : IComparable
        where TCallbackSignature : class
    {

        // Local-Scope Variable Declarations:
        private RedBlackTree<TIdentity, TCallbackSignature> _tree;
        private static readonly MemoryCache _cache = new MemoryCache(new MemoryCacheOptions());

        /// <summary>
        /// This class encapsulates a Action processor. It stores Action handling methods in a red-black tree
        /// for faster switching between large amounts of handlers. This technique can replace a large switch
        /// statement for better efficiency.
        /// </summary>
        /// <param name="translator">The class encapsulating the Action handlers to be added to the tree.</param>
        public CachedAttributeInvocation(Func<THandlerType, TIdentity> translator)
        {
            // Error check the callback type (should be void or delegate):      
            if (!typeof(TCallbackSignature).IsSubclassOf(typeof(Delegate)))     
                return;
            _tree = new RedBlackTree<TIdentity, TCallbackSignature>();

            // Get all methods from the loaded assemblies
            var assemblies = AppDomain.CurrentDomain.GetAssemblies();

            var methods = assemblies
                .SelectMany(a => a.GetTypes())
                .SelectMany(t => t.GetMethods(BindingFlags.Static | BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
                .Where(m => m.GetCustomAttributes(typeof(THandlerType), false).Length > 0) // Filter for THandlerType specifically
                .ToArray();

            foreach (var method in methods)
            {
                foreach (var attr in method.GetCustomAttributes<THandlerType>())
                {
                    if (!IsValidHandler(method))
                    {
                        // Silently skip - method signature doesn't match this TCallbackSignature
                        // This is normal when multiple CachedAttributeInvocation instances scan the same assembly
                        continue;
                    }

                    // Ensure the method is static if no target is provided     
                    if (!method.IsStatic)
                    {
                        Log.Error($"[Error] Method {method.Name} in {method.DeclaringType.Name} is not static and cannot be used with null target.", ConsoleColor.DarkRed);
                        continue;
                    }

                    try
                    {
                        TIdentity key = translator(attr);
                        TCallbackSignature value = Delegate.CreateDelegate(typeof(TCallbackSignature), null, method, false) as TCallbackSignature;

                        if (value == null)
                        {
                            Log.Error($"[Error] Failed to create delegate for {method.Name} in {method.DeclaringType.Name}.", ConsoleColor.DarkRed);
                            continue;
                        }

                        // Add the callback definition:
                        if (!_tree.TryAppend(key, value))
                        {
                            // The method already exists. Combine.
                            TCallbackSignature source = _tree.TryGetValue(key); 
                            source = Delegate.Combine(source as Delegate, value as Delegate) as TCallbackSignature;
                            _tree.AppendOrUpdate(key, source);
                        }
                    }
                    catch (Exception ex)
                    {
                        Log.Error($"[Error] Processing method {method.Name} in {method.DeclaringType.Name}: {ex.Message}", ConsoleColor.DarkRed);
                    }
                }
            }
        }

        private bool IsValidHandler(MethodInfo method)
        {
            // Validate against the actual TCallbackSignature delegate type
            var invokeMethod = typeof(TCallbackSignature).GetMethod("Invoke");
            if (invokeMethod == null)
                return false;

            // Check return type matches
            if (method.ReturnType != invokeMethod.ReturnType)
                return false;

            // Check parameter types match exactly
            var expectedParams = invokeMethod.GetParameters();
            var actualParams = method.GetParameters();

            if (expectedParams.Length != actualParams.Length)
                return false;

            for (int i = 0; i < expectedParams.Length; i++)
            {
                if (expectedParams[i].ParameterType != actualParams[i].ParameterType)
                    return false;
            }

            return true;
        }

        /// <summary>
        /// This indexer attempts to get the callback associated with the specified key passed in the arguments. If
        /// the tree contains the value, it will return that callback value, else it will return null.
        /// </summary>
        /// <param name="index">The Action type or parameter being checked for.</param>
        public TCallbackSignature this[TIdentity index]
        {
            // Fetching action data from the cache if available
            get
            {
                if (!_cache.TryGetValue(index, out TCallbackSignature action))  
                {
                    action = _tree.TryGetValue(index);
                    if (action != null)
                        _cache.Set(index, action, TimeSpan.FromMinutes(30));        
                }
                return action;
            }
        }
    }
}
