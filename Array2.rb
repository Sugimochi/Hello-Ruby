# encoding: Shift_JIS

ary = []

100.times do |i|
	ary << i+1
end

result = Array.new
10.times do |i|
	result << ary[i*10..i*10+9]
end

p result[0]


class Ary

	def sum_array
		num1 = [1,2,3]
		num2 = [4,6,8]
		ary = []
		
		num1.zip(num2) do |a,b|
			ary << a + b
		end
	p ary
	end
end

al = Ary.new

al.sum_array