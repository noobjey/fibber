require_relative 'printer'
require_relative 'fibber'

printer = Printer.new
values_to_display = []
quantity = 15

(0..quantity - 1).each do |value|
  values_to_display << Fibber.generate(value)
end

puts printer.jagged_output(values_to_display)
