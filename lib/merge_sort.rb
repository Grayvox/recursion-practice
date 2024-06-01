# frozen_string_literal: true

def merge_sort(arr = [])
  return arr if arr.length <= 1

  center = arr.length / 2
  left_sub = merge_sort(arr[...center])
  right_sub = merge_sort(arr[center...])

  sorted = []
  until left_sub.empty? || right_sub.empty?
    next sorted << right_sub.shift if left_sub.first > right_sub.first

    sorted << left_sub.shift
  end
  sorted.concat(left_sub, right_sub)
end
