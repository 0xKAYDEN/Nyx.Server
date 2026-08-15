using System.Reflection;

namespace Nyx.Network.Protocol;

/// <summary>Marks a static method for automatic packet registration at process startup.</summary>
[AttributeUsage(AttributeTargets.Method, AllowMultiple = true, Inherited = false)]
public sealed class TqPacketHandlerAttribute : Attribute
{
    public TqPacketHandlerAttribute(ushort packetId) => PacketId = packetId;
    public ushort PacketId { get; }
}

public delegate ValueTask TqPacketHandler<TContext>(
    TContext context,
    byte[] packet,
    CancellationToken cancellationToken);

/// <summary>
/// Immutable-after-build, O(1) packet dispatch table. Reflection is paid once during startup;
/// the hot path is one array lookup and a direct delegate call.
/// </summary>
public sealed class PacketHandlerRegistry<TContext>
{
    private readonly TqPacketHandler<TContext>?[] _handlers;

    private PacketHandlerRegistry(TqPacketHandler<TContext>?[] handlers, int count)
    {
        _handlers = handlers;
        Count = count;
    }

    public int Count { get; }

    public static PacketHandlerRegistry<TContext> Discover(params Assembly[] assemblies)
    {
        ArgumentNullException.ThrowIfNull(assemblies);
        var handlers = new TqPacketHandler<TContext>?[ushort.MaxValue + 1];
        int count = 0;

        IEnumerable<MethodInfo> methods = assemblies
            .Where(static assembly => assembly is not null)
            .Distinct()
            .SelectMany(GetLoadableTypes)
            .SelectMany(static type => type.GetMethods(
                BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic))
            .Where(static method => method.IsDefined(typeof(TqPacketHandlerAttribute), inherit: false))
            .OrderBy(static method => method.DeclaringType?.FullName, StringComparer.Ordinal)
            .ThenBy(static method => method.MetadataToken);

        foreach (MethodInfo method in methods)
        {
            ValidateSignature(method);
            var handler = (TqPacketHandler<TContext>)method.CreateDelegate(typeof(TqPacketHandler<TContext>));

            foreach (TqPacketHandlerAttribute attribute in method.GetCustomAttributes<TqPacketHandlerAttribute>(inherit: false))
            {
                if (handlers[attribute.PacketId] is not null)
                {
                    MethodInfo existing = handlers[attribute.PacketId]!.Method;
                    throw new InvalidOperationException(
                        $"Packet {attribute.PacketId} is registered by both " +
                        $"{existing.DeclaringType?.FullName}.{existing.Name} and " +
                        $"{method.DeclaringType?.FullName}.{method.Name}.");
                }

                handlers[attribute.PacketId] = handler;
                count++;
            }
        }

        return new PacketHandlerRegistry<TContext>(handlers, count);
    }

    public bool Contains(ushort packetId) => _handlers[packetId] is not null;

    public async ValueTask<bool> DispatchAsync(
        TContext context,
        ushort packetId,
        byte[] packet,
        CancellationToken cancellationToken = default)
    {
        TqPacketHandler<TContext>? handler = _handlers[packetId];
        if (handler is null)
            return false;

        await handler(context, packet, cancellationToken).ConfigureAwait(false);
        return true;
    }

    private static IEnumerable<Type> GetLoadableTypes(Assembly assembly)
    {
        try
        {
            return assembly.GetTypes();
        }
        catch (ReflectionTypeLoadException exception)
        {
            return exception.Types.OfType<Type>();
        }
    }

    private static void ValidateSignature(MethodInfo method)
    {
        ParameterInfo[] parameters = method.GetParameters();
        bool valid = method.IsStatic
            && method.ReturnType == typeof(ValueTask)
            && parameters.Length == 3
            && parameters[0].ParameterType == typeof(TContext)
            && parameters[1].ParameterType == typeof(byte[])
            && parameters[2].ParameterType == typeof(CancellationToken);

        if (!valid)
        {
            throw new InvalidOperationException(
                $"Packet handler {method.DeclaringType?.FullName}.{method.Name} must be static and match " +
                $"ValueTask Handler({typeof(TContext).FullName}, byte[], CancellationToken).");
        }
    }
}
