using System;
using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;

// Support both correct and misspelled namespace for backward compatibility
// The class is defined in Nyx.Server.Utilities to match existing code
namespace Nyx.Server.Utilities;

/// <summary>
/// Thread-safe dictionary that replaces the original SafeDictionary.
/// 
/// The original implementation inherited from Dictionary&lt;TKey, TValue&gt; and was NOT thread-safe,
/// causing race conditions in concurrent access scenarios.
/// 
/// This implementation uses ConcurrentDictionary internally for proper thread safety.
/// It maintains API compatibility with the original SafeDictionary and Dictionary classes.
/// </summary>
/// <typeparam name="TKey">The type of keys in the dictionary.</typeparam>
/// <typeparam name="TValue">The type of values in the dictionary.</typeparam>
public sealed class SafeDictionary<TKey, TValue> : IEnumerable<KeyValuePair<TKey, TValue>>
    where TKey : notnull
{
    private readonly ConcurrentDictionary<TKey, TValue> _dictionary;

    /// <summary>
    /// Initializes a new instance of SafeDictionary with default concurrency.
    /// </summary>
    public SafeDictionary()
    {
        _dictionary = new ConcurrentDictionary<TKey, TValue>();
    }

    /// <summary>
    /// Initializes a new instance of SafeDictionary with the specified initial capacity.
    /// </summary>
    /// <param name="capacity">The initial capacity (ignored in ConcurrentDictionary but kept for API compatibility).</param>
    public SafeDictionary(int capacity)
    {
        // ConcurrentDictionary doesn't have a direct capacity constructor,
        // but we can estimate concurrency level based on capacity
        _dictionary = new ConcurrentDictionary<TKey, TValue>(
            concurrencyLevel: Environment.ProcessorCount,
            capacity: Math.Max(capacity, 31));
    }

    /// <summary>
    /// Initializes a new instance of SafeDictionary with a custom equality comparer.
    /// </summary>
    public SafeDictionary(IEqualityComparer<TKey> comparer)
    {
        _dictionary = new ConcurrentDictionary<TKey, TValue>(comparer);
    }

    /// <summary>
    /// Gets or sets the value associated with the specified key.
    /// Returns default(TValue) if the key does not exist.
    /// Thread-safe for concurrent reads and writes.
    /// </summary>
    public TValue this[TKey key]
    {
        get => _dictionary.TryGetValue(key, out var value) ? value : default!;
        set => _dictionary[key] = value;
    }

    /// <summary>
    /// Gets the number of key-value pairs in the dictionary.
    /// Thread-safe.
    /// </summary>
    public int Count => _dictionary.Count;

    /// <summary>
    /// Gets whether the dictionary is empty.
    /// Thread-safe.
    /// </summary>
    public bool IsEmpty => _dictionary.IsEmpty;

    /// <summary>
    /// Gets a collection containing the keys in the dictionary.
    /// Thread-safe.
    /// </summary>
    public ICollection<TKey> Keys => _dictionary.Keys;

    /// <summary>
    /// Gets a collection containing the values in the dictionary.
    /// Thread-safe.
    /// </summary>
    public ICollection<TValue> Values => _dictionary.Values;

    /// <summary>
    /// Determines whether the dictionary contains the specified key.
    /// Thread-safe.
    /// </summary>
    public bool ContainsKey(TKey key) => _dictionary.ContainsKey(key);

    /// <summary>
    /// Gets the value associated with the specified key.
    /// Thread-safe.
    /// </summary>
    public bool TryGetValue(TKey key, out TValue value) => _dictionary.TryGetValue(key, out value);

    /// <summary>
    /// Adds a key-value pair to the dictionary.
    /// If the key already exists, the value is updated (Add-or-Update semantics).
    /// Thread-safe.
    /// </summary>
    public void Add(TKey key, TValue value)
    {
        // Use indexer for Add-or-Update semantics (matches Dictionary behavior)
        _dictionary[key] = value;
    }

    /// <summary>
    /// Attempts to add a key-value pair. Returns false if the key already exists.
    /// Thread-safe.
    /// </summary>
    public bool TryAdd(TKey key, TValue value) => _dictionary.TryAdd(key, value);

    /// <summary>
    /// Removes the value with the specified key.
    /// Thread-safe.
    /// </summary>
    public bool Remove(TKey key) => _dictionary.TryRemove(key, out _);

    /// <summary>
    /// Removes the value with the specified key and returns the removed value.
    /// Thread-safe.
    /// </summary>
    public bool Remove(TKey key, out TValue value) => _dictionary.TryRemove(key, out value);

    /// <summary>
    /// Removes all keys and values from the dictionary.
    /// Thread-safe.
    /// </summary>
    public void Clear() => _dictionary.Clear();

    /// <summary>
    /// Gets or adds a value using the specified factory.
    /// Thread-safe.
    /// </summary>
    public TValue GetOrAdd(TKey key, Func<TKey, TValue> valueFactory) => 
        _dictionary.GetOrAdd(key, valueFactory);

    /// <summary>
    /// Gets or adds a value.
    /// Thread-safe.
    /// </summary>
    public TValue GetOrAdd(TKey key, TValue value) => 
        _dictionary.GetOrAdd(key, value);

    /// <summary>
    /// Adds or updates a value using the specified factories.
    /// Thread-safe.
    /// </summary>
    public TValue AddOrUpdate(
        TKey key, 
        Func<TKey, TValue> addValueFactory, 
        Func<TKey, TValue, TValue> updateValueFactory) =>
        _dictionary.AddOrUpdate(key, addValueFactory, updateValueFactory);

    /// <summary>
    /// Updates a value if it matches the comparison value.
    /// Thread-safe.
    /// </summary>
    public bool TryUpdate(TKey key, TValue newValue, TValue comparisonValue) =>
        _dictionary.TryUpdate(key, newValue, comparisonValue);

    /// <summary>
    /// Copies the dictionary contents to an array.
    /// Thread-safe.
    /// </summary>
    public KeyValuePair<TKey, TValue>[] ToArray() => _dictionary.ToArray();

    /// <summary>
    /// Returns an enumerator that iterates through the dictionary.
    /// Thread-safe (snapshot-based enumeration).
    /// </summary>
    public IEnumerator<KeyValuePair<TKey, TValue>> GetEnumerator() => 
        _dictionary.GetEnumerator();

    /// <summary>
    /// Returns an enumerator that iterates through the dictionary.
    /// </summary>
    IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();

    /// <summary>
    /// Copies the dictionary contents to an array starting at the specified index.
    /// Thread-safe.
    /// </summary>
    public void CopyTo(KeyValuePair<TKey, TValue>[] array, int index)
    {
        ((ICollection<KeyValuePair<TKey, TValue>>)_dictionary).CopyTo(array, index);
    }

    /// <summary>
    /// Gets the underlying ConcurrentDictionary for advanced operations.
    /// Use with caution.
    /// </summary>
    public ConcurrentDictionary<TKey, TValue> AsConcurrentDictionary() => _dictionary;
    
    /// <summary>
    /// Implicit conversion to Dictionary for backward compatibility.
    /// </summary>
    public static implicit operator Dictionary<TKey, TValue>(SafeDictionary<TKey, TValue> safeDict)
    {
        return new Dictionary<TKey, TValue>(safeDict._dictionary);
    }
}
