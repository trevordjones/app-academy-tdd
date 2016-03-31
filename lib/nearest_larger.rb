def nearest_larger(arr, index)
  larger_number = arr.each_with_index{|n, i| return i if n > arr[index] }
  larger_number.is_a?(Integer) ? larger_number : nil
end
