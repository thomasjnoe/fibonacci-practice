#!/usr/bin/env ruby

# Iterative Fibonacci Sequence
def fibs(n)
	return [0] if n == 0
	nums = [0,1]
	(2..n).each { |num| nums << nums[num-2] + nums[num-1] }
	nums
end

# One-Line Recursive Sequence
def fibs_rec(n, i = 0, j = 1, nums = [0])
	n == 0 ? nums : (nums << j; fibs_rec(n-1, j, i+j, nums))
end

# Auxiliary Recursive function for #fibs2
def fibs_rec2(n, i = 0, j = 1)
	n == 0 ? i : fibs_rec2(n-1, j, i+j)
end

# Rersive function using #fibs_rec2
def fibs2(n)
	(0..n).map { |i| fibs_rec2(i) }
end


puts "Non-recursive Fibonacci Sequence"
puts fibs(6)

puts "Recursive Fibonacci Sequence (One-Liner)"
puts fibs_rec(6)

puts "Recursive Fibonacci Sequence (w/ auxiliary function)"
puts fibs2(6)