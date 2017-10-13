def two_sum?(arr, target_sum)

  arr.each_with_index do |el1, i1|
    arr.each_with_index do |el2, i2|
      next if i >= j
      return true if i + j == target
    end
  end
  false
end

def okay_two_sum?(arr, target)

  sorted_space = arr.sort



  until sorted_space.empty?

    l = 0
    r = -1
    return true if sorted_space[l] + sorted_space[r] == target
    if sorted_space[l] + sorted_space[r] < target
      sorted_space.shift
    else
      sorted_space.pop
    end
  end

  false

end
