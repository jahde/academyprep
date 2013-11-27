def nearest_larger(arr, idx)
  diff = 1
  loop do
    left = idx - diff
    right = idx + diff
    
    if (left >= 0) && (arr[left] > arr[idx])
      return left
    elsif (right < arr.length) && (arr[right] > arr[idx])
      return right
    elsif (left < 0) && (right >= arr.length)
      return nil
    end
    
    diff += 1
  end
end

=begin
puts nearest_larger([2,3,4,8], 2)
puts nearest_larger([2,8,4,3], 2)
puts nearest_larger([2,6,4,8], 2)
puts nearest_larger([2,6,4,6], 2)
puts nearest_larger([8,2,4,3], 2)
puts nearest_larger([2,4,3,8], 1)
=end
#puts nearest_larger( [2, 6, 4, 8], 3)
puts nearest_larger([8,2,4,3], 2)
puts nearest_larger([2,4,3,8], 1)
