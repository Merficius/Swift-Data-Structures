public class BinarySearchTree<T: Comparable> {
    private var rootNode: TreeNode<T>?
    private var counter: Int = 0
    
    public var count: Int {
        print("Number of elements in BST:", counter)
        return counter
    }
    
    public var isEmpty: Bool {
        print("Is BST empty? ->", counter == 0)
        return counter == 0
    }
    
    func insert(_ value: T) {
        let node = TreeNode(data: value)
        
        // If root does not have a value, set the value as root
        if let rootNode = self.rootNode {
            self.insert(rootNode, node)
        } else {
            self.rootNode = node
        }
        
        counter += 1
    }
    
    private func insert(_ parentNode: TreeNode<T>, _ node: TreeNode<T>) {
        if node.data < parentNode.data {
            // If left node of parent has a value, call the function again
            // Else place the value on the left node of parent
            if let leftNode = parentNode.leftNode {
                self.insert(leftNode, node)
            } else {
                parentNode.leftNode = node
            }
        } else {
            if let rightNode = parentNode.rightNode {
                self.insert(rightNode, node)
            } else {
                parentNode.rightNode = node
            }
        }
    }
    
    func remove(_ value: T) {
        var validRemove = false
        rootNode = remove(rootNode, value, &validRemove)
        
        if validRemove {
            print("Removing:", value)
            counter -= 1
        } else {
            print("Value: \(value) not found")
        }
    }
    
    private func remove(_ node: TreeNode<T>?, _ value: T, _ foundFlag: inout Bool) -> TreeNode <T>? {
        if node == nil {
            return nil
        }
        
        if value < (node?.data)! {
            node?.leftNode = remove(node?.leftNode, value, &foundFlag)
        } else if value > (node?.data)! {
            node?.rightNode = remove(node?.rightNode, value, &foundFlag)
        } else {
            // value == (node?.data)!
            // With zero childs returns nil
            // With one child returns the child
            foundFlag = true
            if node?.leftNode == nil {
                return node?.rightNode
            } else if node?.rightNode == nil {
                return node?.leftNode
            }
            
            // With two childs
            // Copy min right value after target node to the target node
            // Remove the min right value after target node
            node?.data = minValue(node?.rightNode)!
            node?.rightNode = remove(node?.rightNode, (node?.data)!, &foundFlag)
        }
        
        return node;
    }
    
    private func minValue(_ node: TreeNode<T>?) -> T? {
        var temp = node
        
        while let next = temp?.leftNode {
            temp = next
        }
        
        return temp?.data
    }
    
    func inOrder() {
        print("==========IN-ORDER==========")
        inOrder(rootNode)
        print("\n")
    }
    
    func preOrder() {
        print("==========PRE-ORDER==========")
        preOrder(rootNode)
        print("\n")
    }
    
    func postOrder() {
        print("==========POST-ORDER==========")
        postOrder(rootNode)
        print("\n")
    }
    
    private func preOrder(_ node: TreeNode<T>?) {
        guard let _ = node
        else {
            return
        }
        
        print("\(node!.data)", terminator: " ")
        preOrder(node?.leftNode)
        preOrder(node?.rightNode)
    }
    
    private func inOrder(_ node: TreeNode<T>?) {
        guard let _ = node
        else {
            return
        }
        
        inOrder(node?.leftNode)
        print("\(node!.data)", terminator: " ")
        inOrder(node?.rightNode)
    }
    
    private func postOrder(_ node: TreeNode<T>?) {
        guard let _ = node
        else {
            return
        }
        
        postOrder(node?.leftNode)
        postOrder(node?.rightNode)
        print("\(node!.data)", terminator: " ")
    }
    
    func search(_ value: T) {
        self.search(self.rootNode, value)
    }
    
    private func search(_ node: TreeNode<T>?, _ value: T) {
        guard let node = node
        else {
            print("This value is not in the tree: \(value)")
            return
        }
        
        if value > node.data {
            search(node.rightNode, value)
        } else if value < node.data {
            search(node.leftNode, value)
        } else {
            print("Found!: \(node.data)")
        }
    }
}
