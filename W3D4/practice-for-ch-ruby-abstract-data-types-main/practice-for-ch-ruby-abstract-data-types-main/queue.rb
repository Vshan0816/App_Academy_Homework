class Queue
    def intialize 
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue(el)
        @queue.shift(el)
    end

    def peek(el)
        @queue[0]
    end
end