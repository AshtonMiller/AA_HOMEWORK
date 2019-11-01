


class Queue
    def initialize
        @stack = []
    end

    def enqueue(el)
        @stack.unshift(el)
    end

    def dequeue
        @stack.pop
    end

    def peek
        @stack[0]
    end

    private 
    attr_reader :stack

end 