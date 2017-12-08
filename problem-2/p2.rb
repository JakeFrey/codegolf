# coding: utf-8
require 'pry'

puts "enter the list of numbers, separated by spaces like 1 2 3 4"
# nums = gets.chomp
# nums_array = nums.split(' ').map{ |value| value.to_i }
nums_array = [1, 5, 3, 7, 6]

puts "enter the list of ranges"
# ranges = gets.chomp
ranges = [[1, 4], [6, 7]]

# Output should be [1, 3, 7, 6]
output_list = []

for range in ranges
  for num in nums_array
    if num.between?(range[0], range[1])
      output_list.push(num)
    end
  end
end

puts "The output is :"
p output_list
