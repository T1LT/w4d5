list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# min = -5
def my_min(array) # O(n)
    min = 0
    (0...array.length).each do |i|
        if array[i] < min
            min = array[i]
        end
    end
    min

    # (0...array.length).each do |i|
    #     (0...array.length).each do |j|
    #         if array[j] < min
    #             min = array[j]
    #         end
    #     end
    # end
    # min
end

