# encoding: Shift_JIS

class Receipt

	VERSION = "1.0.0"


	def initialize(name)
		@name = name
		@lines = []
	end
	
	attr_accessor :name
	
	def lines=(lines)
		@lines = lines
	end
	
	def calc
		total = 0
		@lines.each do |line|
			total += line[:price] * line[:num]
		end
		return total
		
	end 
	
	def output
		puts "���V�[�g #{self.name}"
		@lines.each do |line|
			puts"#{line[:name]}: #{line[:price]}�~ �~#{line[:num]}"
		end
		puts "���v���z�F #{calc}�~"
	end

end

class << Receipt

	def create_receipt_xyz
		self.new("�X�g�Axyz")
	end
	

end



r = Receipt.new("�X�g�AA")
r.lines = [{name: "��", price: 200, num: 1},{name: "�卪", price: 100, num: 2}]
r.output
