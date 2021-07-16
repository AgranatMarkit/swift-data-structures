class Stack<T> {
    private var topNode: Node<T>?
    
    var isEmpty: Bool {
        topNode == nil
    }
    
    var top: T? {
        topNode?.value
    }
    
    private(set) var size = 0
    
    func push(_ value: T) {
        let node = Node(value, topNode)
        topNode = node
        size += 1
    }
    
    @discardableResult
    func pop() -> T? {
        size = max(0, size - 1)
        let value = topNode?.value
        topNode = topNode?.next
        return value
    }
    
    deinit {
        while !isEmpty {
            pop()
        }
    }
    
    private class Node<T> {
        let value: T
        var next: Node?
        init(_ value: T, _ next: Node?) {
            self.value = value
            self.next = next
        }
    }
}
