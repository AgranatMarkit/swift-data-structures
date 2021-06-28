class Queue<T> {
    private class Node<T> {
        var val: T, next: Node<T>?
        init(_ val: T) {
            self.val = val
        }
    }
    
    private var head: Node<T>?
    private var tail: Node<T>?
    
    init() {}
    
    var size = 0
    
    var front: T {
        head!.val
    }
    
    var rear: T {
        tail!.val
    }
    
    var isEmpty: Bool {
        head == nil
    }
    
    func enqueue(_ val: T?) {
        guard let val = val else { return }
        let node = Node(val)
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }
        tail = node
        size += 1
    }
    
    func dequeue() {
        if head === tail {
            head = nil
            tail = nil
        } else {
            head = head?.next
        }
        size = max(0, size - 1)
    }
    
    deinit {
        while !isEmpty {
            dequeue()
        }
    }
}
