# encoding: Shift_JIS
class Receipt

	@@count = 0
	
	def Receipt.count
		@@count
	end
	
	def initialize(name)
		@name = name
		@lines = []
	end

	def lines=(lines)
		@lines = lines
	end
	
	#	attr_accessor :lines
	
	def calc
		total = 0
		@lines.each do |line|
			total += line[:price] * line[:num]
		end
		return total
	end
	
	def output
		puts "���V�[�g #{@name}"
		@lines.each do |line|
			puts "#{line[:name]}: #{line[:price]}�~ �~ #{line[:num]}"
		end
		@@count += 1
		puts "���v���z: #{calc}�~"
	end
end

r1 = Receipt.new("�X�g�AA")
r2 = Receipt.new("�X�g�AB")

r1.lines = [{name: "�卪", price: 500, num: 1}]
r2.lines = [{name: "�j���W��", price: 300, num: 3}]

p Receipt.count
p r1.output
p r2.output
p Receipt.count
