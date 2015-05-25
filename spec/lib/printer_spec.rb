require './lib/printer'

describe 'Printer' do
  describe 'printer.jagged_output' do
    it 'should print nothing when not an array' do
      printer  = Printer.new
      value    = 'not an array'
      expected = 'Nothing to print!'

      expect(printer.jagged_output(value)).to eq(expected)
    end

    it 'should print one value when one value' do
      printer  = Printer.new
      value    = [0]
      expected = '0'

      expect(printer.jagged_output(value)).to eq(expected)
    end

    it 'should print two values when two values' do
      printer  = Printer.new
      values   = [0, 1]
      expected = '0 1'

      expect(printer.jagged_output(values)).to eq(expected)
    end

    it 'should print five values on one line and one on another when six values' do
      printer  = Printer.new
      values   = [1, 2, 3, 4, 5, 6]
      expected = "1 2 3 4 5\n6"

      expect(printer.jagged_output(values)).to eq(expected)
    end

    it 'should print 12 values on three lines with five on all but the last' do
      printer  = Printer.new
      values   = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
      expected = "1 2 3 4 5\n6 7 8 9 10\n11 12"

      expect(printer.jagged_output(values)).to eq(expected)
    end
  end

  describe 'printer.better_output' do
    it 'should output a string' do
      printer = Printer.new
      values  = [1]

      result = printer.better_output(values)

      expect(result.class).to eq(String)
    end

    it 'should output four characters when 1 character value' do
      printer  = Printer.new
      values   = [1]
      expected = 4

      result = printer.better_output(values)

      expect(result.length).to eq(expected)
    end

    it 'should output four characters when 2 character value' do
      printer  = Printer.new
      values   = [15]
      expected = 4

      result = printer.better_output(values)

      expect(result.length).to eq(expected)
    end

    it 'should output eight characters when 2 values' do
      printer  = Printer.new
      values   = [1, 665]
      expected = 8

      result = printer.better_output(values)

      expect(result.length).to eq(expected)
    end

    it 'should print five values per line' do
      printer  = Printer.new
      values   = [1, 2, 33, 44, 555, 665]
      expected = "   1   2  33  44 555\n 665"

      result = printer.better_output(values)

      expect(result).to eq(expected)
    end
  end
end
