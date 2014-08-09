#!/usr/bin/env ruby

def fibs(n)
	nums = [0,1]
	(2..n).each { |num| nums << nums[num-2] + nums[num-1] }
	return nums
end

def fibs_rec(n)

end

puts "Non-recursive Fibonacci Sequence"
puts fibs(6)

#puts "Recursive Fibonacci Sequence"