#!/usr/bin/env ruby

def fibs(n)
	return [0] if n == 0
	nums = [0,1]
	(2..n).each { |num| nums << nums[num-2] + nums[num-1] }
	nums
end

def fibs_rec(n, i = 0, j = 1, nums = [0])
	n == 0 ? nums : (nums << j; fibs_rec(n-1, j, i+j, nums))
end

def fibs_aux(n, i, j)
end


puts "Non-recursive Fibonacci Sequence"
puts fibs(6)

puts "Recursive Fibonacci Sequence"
puts fibs_rec(6)