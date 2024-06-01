# frozen_string_literal: true

def merge_sort(arr = [])
  return arr if arr.length < 2

  center = arr.length / 2
  center += 1 if arr.length.odd?
  left = merge_sort(arr.slice(0, center))
  right = merge_sort(arr.slice(center, arr.length))
end

merge_sort([4, 3, 2, 5, 1, 6, 7])
