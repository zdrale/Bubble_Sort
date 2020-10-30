def bubble_sort(arr)
  unsorted = arr.length - 1
  until unsorted.zero?
    arr.each_with_index do |target_value, target_index|
      if target_index < arr.length - 1 && target_value > arr[target_index + 1]
        arr[target_index] = arr[target_index + 1]
        arr[target_index + 1] = target_value
      end
    end
    unsorted -= 1
  end
  arr
end

p bubble_sort([8, 2, 10, 13, 3, 1, 5, 9])

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
