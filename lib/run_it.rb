require_relative 'printer'
require_relative 'fibber'

values_to_display = []
quantity = 15

(0..quantity - 1).each do |value|
  values_to_display << Fibber.generate(value)
end

printer = Printer.new(values_to_display)
puts 'Jagged Ouput'
puts printer.jagged_output
puts "\n" * 2
puts 'Better Ouput'
puts printer.better_output
