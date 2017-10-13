require 'benchmark'

def my_min(arr)
  smallest = arr.first
  arr.each_index do |i|
    smaller = nil
    arr.each_index do |j|
      next if i == j
      arr[i] < arr[j] ? smaller = arr[i] : smaller = arr[j]
    end
    smallest = smaller if smaller < smallest
  end
  smallest
end

def my_min2(arr)
  smallest = arr.first
  arr.each do |int|
    smallest = int if int < smallest
  end
  smallest
end



def cont_sub_sum(arr)
  largest_sum = arr[0] + arr[1]
  arr.each_index do |i|
    arr.each_index do |j|
      next if j < i
      largest_sum = arr[i..j].reduce(:+) if arr[i..j].reduce(:+) > largest_sum
    end
  end
  largest_sum
end

def cont_sub_sum2(arr)
  largest_sum = arr.first
  current_sum = 0
  arr.each do |int|
    current_sum += int
    if current_sum > largest_sum
      largest_sum = current_sum
    elsif current_sum <= 0
      current_sum = 0
    end
  end

  largest_sum
end

arr = [-4, -5, -6]
puts "my_min: #{my_min(arr)}"
puts "my_min2: #{my_min2(arr)}"
puts "cont_sub_sum: #{cont_sub_sum(arr)}"
puts "cont_sub_sum: #{cont_sub_sum2(arr)}"
