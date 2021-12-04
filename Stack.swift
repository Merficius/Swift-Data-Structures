public class Stack<T: Equatable> {
    private var data: Array<T>
    
    public var count: Int {
        print("Number of elements in stack:", data.count)
        return data.count
    }
    
    public var isEmpty: Bool {
        print("Is stack empty? ->", data.isEmpty)
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
    
    func push(_ object: T?) {
        if object == nil {
            print("Cannot push nil to the stack")
        } else {
            data.append(object!)
        }
    }
    
    func pop() -> T? {
        if data.isEmpty {
            print("Cannot pop an empty stack")
            return nil
        } else {
            print("Popping:", last!)
            return data.removeLast()
        }
    }
    
    func peek() -> T? {
        if data.isEmpty {
            print("Cannot peek an empty stack")
            return nil
        } else {
            print("Peeking:", data.last)
            return data.last
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
    
    func printStack() {
        print("Elements in stack: ", terminator: "")
        for element in data {
            print(element, terminator: ", ")
        }
        print()
    }
}
