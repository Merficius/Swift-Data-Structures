// QUEUE
print("===============QUEUE===============")
print()

// Int queue
print("<<<<<Int Queue>>>>>")
var intQueue = Queue<Int>()
intQueue.printQueue()
intQueue.count
intQueue.isEmpty
print()

intQueue.enqueue(3)
intQueue.enqueue(8)
intQueue.enqueue(12)
intQueue.printQueue()
intQueue.count
intQueue.isEmpty
intQueue.dequeue()
intQueue.dequeue()
intQueue.count
intQueue.dequeue()
intQueue.dequeue()
print()

intQueue.enqueue(3)
intQueue.enqueue(3)
intQueue.enqueue(3)
intQueue.enqueue(8)
intQueue.enqueue(12)
intQueue.printQueue()
intQueue.getAt(2)
intQueue.getAt(5)
intQueue.indexOf(8)
intQueue.indexOf(4)
intQueue.ocurrences(of: 3)
intQueue.ocurrences(of: 12)
intQueue.ocurrences(of: 5)
print()

// String queue
print("<<<<<String Queue>>>>>")
var stringQueue = Queue<String>()
stringQueue.printQueue()
stringQueue.count
stringQueue.isEmpty
print()

stringQueue.enqueue("Juan")
stringQueue.enqueue("Ricardo")
stringQueue.enqueue("Andrea")
stringQueue.printQueue()
stringQueue.count
stringQueue.isEmpty
stringQueue.dequeue()
stringQueue.dequeue()
stringQueue.dequeue()
stringQueue.dequeue()
print()

stringQueue.enqueue("Juan")
stringQueue.enqueue("Juan")
stringQueue.enqueue("Juan")
stringQueue.enqueue("Ricardo")
stringQueue.enqueue("Andrea")
stringQueue.printQueue()
stringQueue.getAt(4)
stringQueue.getAt(-1)
stringQueue.indexOf("Ricardo")
stringQueue.indexOf("Ramón")
stringQueue.ocurrences(of: "Juan")
stringQueue.ocurrences(of: "Andrea")
stringQueue.ocurrences(of: "Ramón")

// Deque
print("===============DEQUE===============")
print()

// Float deque
print("<<<<<Float Deque>>>>>")
var floatDeque = Deque<Float>()
floatDeque.printDeque()
floatDeque.count
floatDeque.isEmpty
print()

floatDeque.enqueue(3.3)
floatDeque.enqueue(8.9)
floatDeque.enqueue(12.2)
floatDeque.printDeque()
floatDeque.count
floatDeque.isEmpty
floatDeque.dequeue()
floatDeque.dequeue()
floatDeque.count
floatDeque.dequeue()
floatDeque.dequeue()
print()

floatDeque.enqueue(3.1)
floatDeque.enqueue(3.1)
floatDeque.enqueue(3.1)
floatDeque.enqueue(8.2)
floatDeque.enqueue(12.8)
floatDeque.printDeque()
floatDeque.getAt(2)
floatDeque.getAt(5)
floatDeque.indexOf(8.2)
floatDeque.indexOf(4.4)
floatDeque.ocurrences(of: 3.1)
floatDeque.ocurrences(of: 12.8)
floatDeque.ocurrences(of: 5.1)
print()

floatDeque.printDeque()
floatDeque.addFirst(21.2)
floatDeque.addFirst(50.0)
floatDeque.printDeque()
floatDeque.removeLast()
floatDeque.removeLast()
floatDeque.printDeque()
print()

// Character deque
print("<<<<<Character Deque>>>>>")
var characterDeque = Deque<Character>()
characterDeque.printDeque()
characterDeque.count
characterDeque.isEmpty
print()

characterDeque.enqueue("c")
characterDeque.enqueue("a")
characterDeque.enqueue("B")
characterDeque.printDeque()
characterDeque.count
characterDeque.isEmpty
characterDeque.dequeue()
characterDeque.dequeue()
characterDeque.dequeue()
characterDeque.dequeue()
print()

characterDeque.enqueue("c")
characterDeque.enqueue("C")
characterDeque.enqueue("c")
characterDeque.enqueue("a")
characterDeque.enqueue("d")
characterDeque.printDeque()
characterDeque.getAt(2)
characterDeque.getAt(5)
characterDeque.indexOf("C")
characterDeque.indexOf("g")
characterDeque.ocurrences(of: "c")
characterDeque.ocurrences(of: "d")
characterDeque.ocurrences(of: "l")
print()

characterDeque.printDeque()
characterDeque.addFirst("p")
characterDeque.addFirst("L")
characterDeque.printDeque()
characterDeque.removeLast()
characterDeque.removeLast()
characterDeque.printDeque()
print()
// Stack
print("===============STACK===============")
print()

// Float stack
print("<<<<<Float Stack>>>>>")
var floatStack = Stack<Float>()
floatStack.printStack()
floatStack.count
floatStack.isEmpty
print()

floatStack.push(3.3)
floatStack.push(8.9)
floatStack.push(12.2)
floatStack.printStack()
floatStack.count
floatStack.isEmpty
floatStack.pop()
floatStack.pop()
floatStack.count
floatStack.pop()
floatStack.pop()
floatStack.peek()
print()

floatStack.push(3.1)
floatStack.push(3.1)
floatStack.push(3.1)
floatStack.push(8.2)
floatStack.push(12.8)
floatStack.printStack()
floatStack.peek()
floatStack.getAt(2)
floatStack.getAt(5)
floatStack.indexOf(8.2)
floatStack.indexOf(4.4)
floatStack.ocurrences(of: 3.1)
floatStack.ocurrences(of: 12.8)
floatStack.ocurrences(of: 5.1)
print()

// Character stack
print("<<<<<Character Stack>>>>>")
var characterStack = Stack<Character>()
characterStack.printStack()
characterStack.count
characterStack.isEmpty
print()

characterStack.push("c")
characterStack.push("a")
characterStack.push("B")
characterStack.printStack()
characterStack.count
characterStack.isEmpty
characterStack.pop()
characterStack.pop()
characterStack.pop()
characterStack.pop()
characterStack.peek()
print()

characterStack.push("c")
characterStack.push("C")
characterStack.push("c")
characterStack.push("a")
characterStack.push("d")
characterStack.printStack()
characterStack.peek()
characterStack.getAt(2)
characterStack.getAt(5)
characterStack.indexOf("C")
characterStack.indexOf("g")
characterStack.ocurrences(of: "c")
characterStack.ocurrences(of: "d")
characterStack.ocurrences(of: "l")
print()

// Binary Search Tree
print("===============BST===============")
print()

// Int BST
print("<<<<<Int BST>>>>>")
var intBST = BinarySearchTree<Int>()
intBST.inOrder()
intBST.count
intBST.isEmpty
print()

intBST.insert(100)
intBST.insert(50)
intBST.insert(110)
intBST.insert(204)
intBST.insert(31)
intBST.insert(90)
intBST.insert(49)
intBST.insert(12)
intBST.insert(38)
intBST.insert(184)
intBST.insert(121)
intBST.insert(89)
intBST.insert(1)
intBST.insert(9)
intBST.insert(92)
intBST.preOrder()
intBST.inOrder()
intBST.postOrder()
intBST.count
intBST.isEmpty
intBST.remove(100)
intBST.inOrder()
intBST.remove(2)
intBST.remove(8)
intBST.remove(12)
intBST.inOrder()
intBST.search(900)
intBST.search(49)
intBST.search(184)
intBST.count
print()

// String BST
print("<<<<<String BST>>>>>")
var stringBST = BinarySearchTree<String>()
stringBST.inOrder()
stringBST.count
stringBST.isEmpty
print()

stringBST.insert("Juan")
stringBST.insert("Mario")
stringBST.insert("Fernando")
stringBST.insert("Andrea")
stringBST.insert("Jimena")
stringBST.insert("Pedro")
stringBST.insert("Omar")
stringBST.insert("Carlos")
stringBST.insert("Joaquín")
stringBST.insert("Javier")
stringBST.insert("Mariana")
stringBST.insert("Lucía")
stringBST.insert("Benito")
stringBST.insert("Luis")
stringBST.preOrder()
stringBST.inOrder()
stringBST.postOrder()
stringBST.count
stringBST.isEmpty
stringBST.remove("Pedro")
stringBST.remove("Ramón")
stringBST.remove("Jorge")
stringBST.remove("Mariana")
stringBST.inOrder()
stringBST.search("Alejandro")
stringBST.search("Lucía")
stringBST.search("Omar")
stringBST.count
print()
