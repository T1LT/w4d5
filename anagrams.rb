# Phase 1
def first_anagram?(str1, str2) # O(n!)
    str1.chars.permutation.to_a.map { |el| el.join("") }.include? str2
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# Phase 2
def second_anagram?(str1,str2) # O(n ^ 2)
    string2 = str2.chars
    str1.chars.each do |char|
        unless string2.find_index(char).nil?
            string2.delete_at(string2.find_index(char))
        else
            return false
        end
    end
    true
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# Phase 3
def third_anagram?(str1, str2) # O(nlogn)
    str1.chars.sort == str2.chars.sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

# Phase 4
def fourth_anagram?(str1,str2)
    # With 2 hashes
    # hash1 = Hash.new(0)
    # hash2 = Hash.new(0)
    # str1.chars.each { |char| hash1[char] += 1 }
    # str2.chars.each { |char| hash2[char] += 1 }
    # hash1 == hash2

    # BONUS - With 1 hash
    hash = Hash.new(0)
    str1.chars.each { |char| hash[char] += 1 }
    str2.chars.each { |char| hash[char] -= 1 }
    hash.values.all? { |el| el == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true