# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

def pmt(interest_rate, number_of_payments, present_value)
	
	((interest_rate * present_value) / (1 - ((1 + interest_rate)**(-1 * number_of_payments)))).round(2)
	
end

puts "Your monthly payment will be $#{pmt(0.01, 60, 30000)}."  
# Where for pmt(x,y,z): x = monthly interest rate expressed as decimal, y = number of monthly payments, and z = loan's principal
