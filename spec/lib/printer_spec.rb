require './lib/printer'

describe 'printer.jagged_output' do

  it 'should print nothing when no input' do
    printer = Printer.new

    expect(printer.jagged_output).to eq('Nothing to print!')
  end
end
