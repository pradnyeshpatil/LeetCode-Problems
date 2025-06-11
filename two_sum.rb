class TwoSum
  def two_sum(nums, target)
      seen = {}
      nums.each_with_index do |num, index|
          another_number = target - num
          return [seen[another_number], index] if seen.include?(another_number)
          seen[num] = index
      end
  end

end

ts = TwoSum.new
target = 9 
input = [2,7,11,15]

puts ts.two_sum(input, target)

