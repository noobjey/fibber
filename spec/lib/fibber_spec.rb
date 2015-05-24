require './lib/fibber'

describe Fibber do
  describe 'fibber.generate()' do
    it 'returns zero when there is no quantity' do
      fibber = Fibber.new
      empty_quantity = ''

      expect(fibber.generate(empty_quantity)).to eq(0)
    end

    it 'returns 0 when quantity is 0' do
      fibber = Fibber.new
      quantity = 0

      expect(fibber.generate(quantity)).to eq(0)
    end

    it 'returns 1 when quantity is 1' do
      fibber = Fibber.new
      quantity = 1

      expect(fibber.generate(quantity)).to eq(1)
    end

    it 'returns 1 when quantity is 2' do
      fibber = Fibber.new
      quantity = 2

      expect(fibber.generate(quantity)).to eq(1)
    end
  end
end
