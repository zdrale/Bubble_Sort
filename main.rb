def bubble_sort (arr)
  length = arr.length()
  for i in 0...length
    for j in 0...length-1
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  arr
end  
p bubble_sort([3, 1, 2, 4, 10, 9, 7, 8, 5, 6])