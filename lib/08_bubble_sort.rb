def bubble_sort(arr)
  arr.each do |num|
    arr.each_with_index do |int, index|
      break if index == (arr.length - 1)
      if int > arr[index+1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
      end
    end
  end
  arr
end

puts bubble_sort([1,482,34])

