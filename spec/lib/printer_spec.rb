require './lib/printer'

describe 'Printer' do
  describe 'printer.jagged_output' do
    it 'should print one value when one value' do
      value    = [0]
      printer  = Printer.new(value)
      expected = '0'

      expect(printer.jagged_output).to eq(expected)
    end

    it 'should print two values when two values' do
      values   = [0, 1]
      printer  = Printer.new(values)
      expected = '0 1'

      expect(printer.jagged_output).to eq(expected)
    end

    it 'should print five values on one line and one on another when six values' do
      values   = [1, 2, 3, 4, 5, 6]
      printer  = Printer.new(values)
      expected = "1 2 3 4 5 \n6"

      expect(printer.jagged_output).to eq(expected)
    end

    it 'should print 12 values on three lines with five on all but the last' do
      values   = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
      printer  = Printer.new(values)
      expected = "1 2 3 4 5 \n6 7 8 9 10 \n11 12"

      expect(printer.jagged_output).to eq(expected)
    end
  end

  describe 'printer.better_output' do
    it 'should output a string' do
      values  = [1]
      printer = Printer.new(values)

      result = printer.better_output

      expect(result.class).to eq(String)
    end

    it 'should output four characters when 1 character value' do
      values   = [1]
      printer  = Printer.new(values)
      expected = 4

      result = printer.better_output

      expect(result.length).to eq(expected)
    end

    it 'should output four characters when 2 character value' do
      values   = [15]
      printer  = Printer.new(values)
      expected = 4

      result = printer.better_output

      expect(result.length).to eq(expected)
    end

    it 'should output eight characters when 2 values' do
      values   = [1, 665]
      printer  = Printer.new(values)
      expected = 8

      result = printer.better_output

      expect(result.length).to eq(expected)
    end

    it 'should output five values per line' do
      values   = [1, 2, 33, 44, 555, 665]
      printer  = Printer.new(values)
      expected = "   1   2  33  44 555\n 665"

      result = printer.better_output

      expect(result).to eq(expected)
    end
  end

  describe 'printer.fancy_output' do
    it 'should use output two characters when largest value is one character' do
      values = [1, 2, 3]
      printer = Printer.new(values)
      expected = 6

      result = printer.fancy_output

      expect(result.length).to eq(expected)
    end

    it 'should use output three characters when largest value is two characters' do
      values = [1, 2, 33]
      printer = Printer.new(values)
      expected = 9

      result = printer.fancy_output

      expect(result.length).to eq(expected)
    end

    it 'should use output six characters when largest value is five characters' do
      values = [1, 2, 33, 12_345]
      printer = Printer.new(values)
      expected = 24

      result = printer.fancy_output

      expect(result.length).to eq(expected)
    end

    it 'should output five values per line' do
      values = [1, 2, 33, 44, 555, 665]
      printer = Printer.new(values)
      expected = "   1   2  33  44 555\n 665"

      result = printer.fancy_output

      expect(result).to eq(expected)
    end
  end
end
