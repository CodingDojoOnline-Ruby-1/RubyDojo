MathDojo.new.add(2).add(2, 5).subtract(2, 3).result

class MathDojo
	def initialize
		@number = 0
	end
	def add(*num)
		@number += num.flatten.inject(:+) #That's pretty sweet.  This is the second time I've seen an flatten.inject() used.  
		self
	end
	def subtract(*num)
		@number -= num.flatten.inject(:+)
		self
	end
	def result
		puts @number
		self
	end
end

MathDojo.new.add(2).add(2, 5).subtract(2, 3).result
#new calls def initialize
