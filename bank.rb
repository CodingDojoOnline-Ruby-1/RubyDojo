class BankAccount
	@@bankaccountcount = 0
	def initialize
		@acctnum = Random.new_seed
		@checking_balance = 0
		@saving_balance = 0
		@interestrate = "1.5%"
		@@bankaccountcount += 1
	end
	def balance(string)
		#I set this variable
		if string == "checking"
			puts @checking_balance
		else
			puts @saving_balance
		end
	end
	def deposit(string, num)
		if string == "checking"
			@checking_balance += num
		else
			@saving_balance += num
		end
	end
	def withdraw(string, num)
		if string == "checking"
			if @checking_balance > 0
				@checking_balance -= num
			else puts "Insufficient Funds"
			end
		end
		if string == "saving"
			if @saving_balance > 0
				@saving_balance -= num
			else puts "Insufficient Funds"
			end
		end
	end
	def checktotalbalance
		puts @checking_balance + @saving_balance
	end
	def count
		puts @@bankaccountcount
	end
	private
	def account_information
		puts @acctnum
		puts @checking_balance
		puts @saving_balance
		puts @interestrate
	end
end

nate = BankAccount.new
nate.deposit("checking", 40000000)
nate.account_information