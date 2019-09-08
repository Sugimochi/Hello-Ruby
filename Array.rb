# encoding: Shift_JIS

#(1)
	a = []

	100.times do |i|
		a << (i+1)
	end

	p a

#(2)	
	a2 = []

	for i in 0..(a.length-1) 
		a2 << (100 * a[i])
	end

	p a2

#(3)
	a3 = []
	
	for i in 0..(a.length-1)
		if a[i] % 3 == 0
			a3 << a[i]
		else
			next
		end
	end
	
	p a3

#(3.1)
	
	#a.delete_if {|item| item % 3 != 0}
	
	#p a

#(4)
	#a.sort_by!{|i| -i}
	#p a

#(5)
	sum = 0
	a.each do |i|
		sum += i
	end
	p sum