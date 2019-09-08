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
		puts "レシート #{@name}"
		@lines.each do |line|
			puts "#{line[:name]}: #{line[:price]}円 × #{line[:num]}"
		end
		@@count += 1
		puts "合計金額: #{calc}円"
	end
end

r1 = Receipt.new("ストアA")
r2 = Receipt.new("ストアB")

r1.lines = [{name: "大根", price: 500, num: 1}]
r2.lines = [{name: "ニンジン", price: 300, num: 3}]

p Receipt.count
p r1.output
p r2.output
p Receipt.count
