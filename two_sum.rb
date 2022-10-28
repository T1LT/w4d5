# brute force
def bad_two_sum?(arr, target) # O(n ^ 2)
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1 && num1 + num2 == target
                return true
            end
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

# sorting
def okay_two_sum?(arr,target) # O(nlogn)
    arr.sort!
    arr.each_with_index do |el,i|
        if !(arr[0...i] + arr[i+1..-1]).bsearch { |x| x ==  target-el }.nil?
            return true
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

# iterate through arr
# insert into hash - diff btw target and ele
# key => element; value => diff btw target and ele
# check if theres a key in the hash that has a value == ele
def two_sum?(arr, target) # O(n)
    hash = Hash.new(0)
    arr.each do |el|
        return true if hash.has_value?(el)
        hash[el] = target - el
    end
    false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false