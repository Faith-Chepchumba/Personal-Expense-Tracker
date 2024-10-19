**expense_tracker.rb**

expenses = []

def add_expense(description, amount, expenses)

expenses << { description: description, amount: amount }

end

loop do

print "Enter expense description (or 'done' to finish): "

description = gets.chomp

break if description.downcase == 'done'

print "Enter expense amount: "

amount = gets.chomp.to_f

add_expense(description, amount, expenses)

end

total = expenses.sum { |expense| expense[:amount] }

puts "Total expenses: $#{total.round(2)}"