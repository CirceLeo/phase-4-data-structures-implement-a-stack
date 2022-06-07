# your code here
class Stack
    # attr_accessor @stack
    # attr_reader 
    def initialize (limit = nil)
        @stack = []
        @limit = limit
    end

    def push element    
        raise 'Stack Overflow' if @limit && @stack.size == @limit

        @stack.push(element)
    end

    def pop
        @stack.pop()
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0
    end

    def full?
        @limit && @stack.size == @limit
    end

    def search value
        @stack.each_with_index do |item, index|
            return size - index - 1 if item == value
        end
        -1
    end

end