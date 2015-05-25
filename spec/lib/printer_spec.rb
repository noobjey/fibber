require './lib/printer'

describe 'printer.jagged_output' do
  it 'should print nothing when not an array' do
    printer = Printer.new
    value = 'not an array'
    output  = 'Nothing to print!'

    expect(printer.jagged_output(value)).to eq(output)
  end

  it 'should print one value when one value' do
    printer = Printer.new
    value = [0]
    output  = '0'

    expect(printer.jagged_output(value)).to eq(output)
  end

  it 'should print two values when two values' do
    printer = Printer.new
    values = [0, 1]
    output  = '0 1'

    expect(printer.jagged_output(values)).to eq(output)
  end

  it 'should print five values on one line and one on another when six values' do
    printer = Printer.new
    values = [1, 2, 3, 4, 5, 6]
    output  = "1 2 3 4 5\n6"

    expect(printer.jagged_output(values)).to eq(output)
  end

  it 'should print 12 values on three lines with five on all but the last' do
    printer = Printer.new
    values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    output  = "1 2 3 4 5\n6 7 8 9 10\n11 12"

    expect(printer.jagged_output(values)).to eq(output)
  end
end
