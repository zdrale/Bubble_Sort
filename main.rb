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



def bubble_sort_by(arr)
  arr.each_with_index do |_value, _i|
    arr.each_with_index do |_val, index|
      break if index.next == arr.length

      difference = yield(arr[index], arr[index.next])
      difference.positive? && (arr[index], arr[index.next] = arr[index.next], arr[index])
    end
  end
  arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }