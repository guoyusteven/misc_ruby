# Ruby verison of that one shitty python program I wrote lol
puts "Please enter a number for x: "
x = gets.chomp.to_f
init_x = x

puts "Please enter a number for y: "
y = gets.chomp.to_f
init_y = y

puts "Please enter a value for which you wish to increase x by each time: "
addition_x = gets.chomp.to_f

puts "Please enter a value for which you wish to increase y by each time: "
addition_y = gets.chomp.to_f

puts "Please enter the number of times you want this calculation to happen for: "
user_count = gets.chomp.to_f

count = 0

# Calculation loop
while count < user_count
  x += addition_x
  y += addition_y
  puts x * y
  count += 1
end

# Display the entered values at the end
puts "Entered Values:"
puts "x: #{init_x}"
puts "y: #{init_y}"
puts "x increase: #{addition_x}"
puts "y increase: #{addition_y}"
puts "Number of calculations: #{user_count}"

sleep(5)