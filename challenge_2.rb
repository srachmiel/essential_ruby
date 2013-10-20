require './challenge_1.rb'
# Line 1 effectively copy-pastes in any code you wrote in challenge_1.rb
# It's similar to connecting an external stylesheet to an HTML file.

# ===========
# CHALLENGE 2
# ===========

# Below is an array of hashes. Each hash in the array represents one rate quote from a bank.

loan_quotes = [
  { "bank" => "Elm Street Bank", "rate" => 0.013},
  { "bank" => "Oak Street Bank", "rate" => 0.009},
  { "bank" => "Ash Street Bank", "rate" => 0.011}
]

# Let's ask our user for the parameters of the loan:

puts "Enter the number of payments:"
nper = gets.chomp.to_i

puts "Enter the loan amount:"
pv = gets.chomp.to_f

# Now, loop through the array of loan quotes using .each:
#   For each option, tell the user how much the monthly payment will be to that bank.
#   Re-use the pmt method that you defined in Challenge 1.


x = loan_quotes[0]
y = loan_quotes[1]
z = loan_quotes[2]

option = [x, y, z]

option.each do |bank|
  int = "#{bank["rate"]}".to_f
  puts "For #{bank["bank"]}, your monthly payment would be $#{pmt(int, nper, pv)}."
end

