def bubble_sort(arr)
  begin
    swapped = false
    arr.each_with_index do |n, i|
      if arr[i + 1]
        if n > arr[i + 1]
          arr[i] = arr[i + 1]
          arr[i + 1] = n
          swapped = true
        end
      end
    end
  end while swapped
  arr
end
