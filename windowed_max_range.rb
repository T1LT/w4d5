# Phase 1: Naive Solution

def windowed_max_range(arr,w) # O(nˆ2)
    current_max_range = -99999
    (0...arr.length).each do |i|
        max = arr[i...i+w].max
        min = arr[i...i+w].min
        if max-min > current_max_range
            current_max_range = max-min
        end
    end
    current_max_range
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

# Phase 2: MyQueue
class MyQueue
  def initialize
    @store = []
  end

  def peek
    @store.first
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  def enqueue(el)
    @store.push(el)
  end

  def dequeue
    @store.shift
  end
end


# Phase 3: MyStack

class MyStack
  def initialize
    @store = []
  end

  def push(el)
    @store.push(el)
  end

  def pop
    @store.pop
  end

  def peek
    @store.first
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end


# Phase 4: StackQueue

class StackQueue
    def initialize
        @push_stack = MyStack.new
        @pop_stack = MyStack.new
    end

    def empty?
        @push_stack.empty?
    end

    def size
        @push_stack.length
    end

    def enqueue(el)
        @push_stack.push(el)
    end

    def dequeue
        reverse_stack
        @pop_stack.pop
    end

    def reverse_stack
        until @push_stack.empty?
            @pop_stack.push(@push_stack.pop)
        end
    end

end

# [  ]
# [  ]