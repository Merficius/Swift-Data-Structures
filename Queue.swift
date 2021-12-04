public class Queue<T: Equatable> {
    private var data: Array<T>
    
    public var count: Int {
        print("Number of elements in queue:", data.count)
        return data.count
    }
    
    public var isEmpty: Bool {
        print("Is queue empty? ->", data.isEmpty)
        return data.isEmpty
    }
    
    public var first: T? {
        return data.first
    }
    
    public var last: T? {
        return data.last
    }
    
    init() {
        data = []
    }
    
    init(_ array: Array<T>) {
        data = array
    }
    
    func enqueue(_ object: T?) {
        if object == nil {
            print("Cannot add nil to the queue")
        } else {
            data.append(object!)
        }
    }
    
    func dequeue() -> T? {
        if data.isEmpty {
            print("Cannot remove from an empty queue")
            return nil
        } else {
            print("Dequeuing:", first!)
            return data.removeFirst()
        }
    }
    
    func getAt(_ index: Int) -> T? {
        if index >= data.count || index < 0 {
            print("Provided index is out of range:", index)
            return nil
        } else {
            print("Getting item at index \(index):", data[index])
            return data[index]
        }
    }
    
    func indexOf(_ object: T) -> Int? {
        print("Index for item \(object):", data.firstIndex(of: object))
        return data.firstIndex(of: object)
    }
    
    func ocurrences(of object: T) -> Int {
        var numberOfOcurrences = 0
        
        for item in data {
            if item == object {
                numberOfOcurrences += 1
            }
        }
        
        print("Number of ocurrences for item \(object):", numberOfOcurrences)
        
        return numberOfOcurrences
    }
    
    func printQueue() {
        print("Elements in queue: ", terminator: "")
        for element in data {
            print(element, terminator: ", ")
        }
        print()
    }
}
