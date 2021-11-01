//Solution goes in Sources
struct CircularBuffer<T> {
    let capacity: Int
    var buffer = [T]()
    
    mutating func read() throws -> T {
        guard !buffer.isEmpty else { throw CircularBufferError.bufferEmpty }
        return buffer.removeFirst()
    }
    
    mutating func write(_ value: T) throws {
        guard buffer.count < capacity else { throw CircularBufferError.bufferFull }
        buffer.append(value)
    }
    
    mutating func clear() {
        buffer.removeAll()
    }
    
    mutating func overwrite(_ value: T) {
        if buffer.count < capacity {
            try? write(value)
        } else {
            buffer.removeFirst()
            buffer.append(value)
        }
    }
}

enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}
