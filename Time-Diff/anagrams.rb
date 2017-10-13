def first_anagram?(string1, string2)
  string1.split('').permutation.to_a.include? string2.split('')
end

def second_anagram?(string1, string2)
search1 = string1.dup
search2 = string2.dup

  search1.chars.each_index do |i|
    search2.chars.each_index do |j|
      if search1[i] == search2[j]
        string1.sub(search1[i], "")
        string2.sub(search[i], "")
      end
    end
  end

  string1.length == 0 && string2.length == 0

end

def third_anagram?(string1, string2)
  string1.split("").sort == string2.split("").sort
end

def fourth_anagram?(string1, string2)
  string1_hash = Hash.new(0)

  string1.chars.each {|ch| string1_hash[ch] += 1}
  string2.chars.each {|ch| string1_hash[ch] -= 1}

  string1_hash.values.all? {|val| val == 0}
end


puts "#{first_anagram?("elvis", "lives")}"
puts "#{fourth_anagram?("elviskdfthn", "liveskdfhtn")}"
