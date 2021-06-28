let queue = Queue<Int>()
assert(queue.isEmpty && queue.size == 0)
queue.enqueue(1)
assert(!queue.isEmpty && queue.size == 1 && queue.front == queue.rear)
for i in 2...5 {
    queue.enqueue(i)
}
assert(!queue.isEmpty && queue.size == 5 && queue.front == 1 && queue.rear == 5)
queue.dequeue()
assert(!queue.isEmpty && queue.size == 4 && queue.front == 2 && queue.rear == 5)
for _ in 2...5 {
    queue.dequeue()
}
assert(queue.isEmpty && queue.size == 0)
