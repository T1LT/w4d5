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

def largest_contiguous_subsum(list)
    res = -1.0 / 0
    temp = 0
    list.each do |el|
        temp += el
        res = [temp, res].max
        if temp <= 0
            temp = 0
        end
    end
    res
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])