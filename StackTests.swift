let stack = Stack<Int>()
assert(stack.isEmpty && stack.size == 0)
stack.push(10)
assert(!stack.isEmpty && stack.size == 1 && stack.top == 10)
stack.push(20)
assert(!stack.isEmpty && stack.size == 2 && stack.top == 20)
assert(!stack.isEmpty && stack.pop() == 20 && stack.size == 1)
assert(!stack.isEmpty && stack.pop() == 10 && stack.size == 0 && stack.isEmpty)

