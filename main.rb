require_relative("lib/wardrobe.rb")
require_relative("lib/printresult.rb")

puts "Привет! Я помогу тебе подобрать одежду по погоде."
puts "Для этого скажи какая на улице температура."

input_temperature = STDIN.gets.chomp
printer = PrintResult.new
clothes = Wardrobe.new(input_temperature.to_i)
printer.show_match(clothes)

