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
end
