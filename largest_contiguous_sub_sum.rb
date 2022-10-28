# Phase 1 - O(nˆ2)
# def largest_contiguous_subsum(list)
#     sub_arrays = []
#     (0...list.length).each do |i| # O(n^2)
#         (i...list.length).each do |j|
#             sub_arrays << list[i..j]
#         end
#     end
#     sub_arrays.uniq!
#     max = -99999

#     sub_arrays.each do |el| # O(n)
#         if el.sum > max
#             max = el.sum
#         end
#     end
#     max
# end


# Phase 2

# def largest_contiguous_subsum(list)
    

# end

# [5, -7, 3]
#  i   j
# largest sum = 
# current sum = 
# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])


# [2, 3, -6, 7, -6, 7]
# [2, 3, -6, 7, -6], [3, -6, 7, -6, 7]
# [-6, 7, -6, 7]
# [7, -6, 7]
# [-6, 7]
# [7]

largest_sum = -99999
temp_arr = []
list = [2, 3, -6, 7, -6, 7]
list.each_with_index do |el,i|
    current_sum = 0

    temp_arr << [list[i]]
    temp_arr << list.drop(list.length - i - 1)
    temp_arr << list.take(list.length - i - 1)
    temp_arr << list[0..i] unless i == 0
    temp_arr << list[i..-1] unless i == list.length - 1
end
p temp_arr