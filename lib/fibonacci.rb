# frozen_string_literal: true

def fibs(num)
  results = [0, 1]

  return [0] if num == 1
  return [] if num < 1

  until results.length == num
    size = results.length
    results << results[size - 1] + results[size - 2]
  end
  results
end

def fibs_rec(num)
  # The recursive solution goes here
end
