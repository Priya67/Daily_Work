  require 'byebug'

  # def range(start, last)
  #   return [] if last <= start
  #   [start] + range(start + 1, last)
  # end

# def range(start, last)
#   arr = []
#   (start...last).each {|num| arr << num}
#   arr
# end

# def exp(num, power)
#   return 1 if power == 0
#   return nil if power < 0
#
#   num * exp(num, power-1)
# end

def exp(base, power)

  return 1 if power == 0
  # return nil if power < 0
  half = exp(base, power / 2)

  return half * half if power.even?
  base * half * half if power.odd?
end


def calculate_retirement_money(age)
  child_age = age/2
  current_bank_account = (child_age)**2
  number_of_years_left = 65-(child_age)
  current_bank_account * number_of_years_left
end


class Array

  def deep_dup
    dupped = []

    self.each do |el|
      dupped << (el.is_a?(Array) ? el.deep_dup : el)
    end
    dupped
  end

  def subsets

    return [[]] if self.empty?
    # return [[], [1]] if self == [1]
    sub = self[0..-2].subsets

    sub + sub.each {|el| el << self.last}
    # return [] if self.empty?
    #
    # self[0..-2].subsets] + [self.last]

  end
end

def fibonacci(n)
  return [1,1] if n == 2
  return [1] if n == 1

  fib = fibonacci(n-1)
  fib + [fib[-2] + fib[-1]]

end

# def permutations(array)
#   return [array] if array.count <= 1
#
#     # array.map { |el| [el] + permutations(array - [el]) }
#
#   sliced = array[0..-2]
#
#   sliced.map do |el|
#     sliced.length.downto(0) do |idx|
#       sliced.insert(idx, array.last)
#     end
#   end
#
#
#
# end
# def bsearch(nums, target)
#   # nil if not found; can't find anything in an empty array
#   return nil if nums.empty?
#
#   probe_index = nums.length / 2
#   case target <=> nums[probe_index]
#   when -1
#     # search in left
#     bsearch(nums.take(probe_index), target)
#   when 0
#     probe_index # found it!
#   when 1
#     # search in the right; don't forget that the right subarray starts
#     # at `probe_index + 1`, so we need to offset by that amount.
#     sub_answer = bsearch(nums.drop(probe_index + 1), target)
#     (sub_answer.nil?) ? nil : (probe_index + 1) + sub_answer
#   end
#
#   # Note that the array size is always decreasing through each
#   # recursive call, so we'll either find the item, or eventually end
#   # up with an empty array.
# end
#
def bsearch(array, target)

  return nil if array.empty?

  midpt = array.length/2
  # byebug
  if array[midpt] == target
    return midpt
  elsif target < array[midpt]
    bsearch(array[0..midpt - 1], target)
  else
    index_val = bsearch(array[midpt + 1 .. -1], target)
    index_val.nil? ? nil : index_val + midpt + 1
  end
end

def permutations(array)
  return [array] if array.length <= 1

  byebug
  # Similar to the subsets problem, we observe that to get the permutations
  # of [1, 2, 3] we can look at the permutations of [1, 2] which are
  # [1, 2] and [2, 1] and add the last element to every possible index getting
  # [3, 1, 2], [1, 3, 2], [1, 2, 3], [3, 2, 1], [2, 3, 1]

  # pop off the last element
  first = array.shift
  # make the recursive call
  perms = permutations(array)
  # we will need an array to store all our different permutations
  total_permutations = []


  # Now we iterate over the result of our recusive call say [[1, 2], [2, 1]]
  # and for each permutation add first into every index. This new subarray
  # gets added to total_permutations.
  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permutations << perm[0 ... i] + [first] + perm[i .. -1]
    end
  end
  total_permutations
end

class Array

def merge_sort
  return self if self.length <2

  left, right = self[0..self.length/2].merge_sort, self[(self.length/2)+1...self.length].merge_sort
  merge(left, right)
end

def merge_sort
    return self if count < 2

    middle = count / 2

    left, right = self.take(middle), self.drop(middle)
    sorted_left, sorted_right = left.merge_sort, right.merge_sort

    merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    merged_array = []
    until left.empty? || right.empty?
      merged_array <<
        ((left.first < right.first) ? left.shift : right.shift)
    end

    merged_array + left + right
  end
end
