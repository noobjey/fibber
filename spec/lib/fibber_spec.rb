require './lib/fibber'

describe Fibber do
  describe 'fibber.generate()' do
    it 'returns zero when there is no quantity' do
      empty_quantity = ''

      expect(Fibber.generate(empty_quantity)).to eq(0)
    end

    it 'returns 0 when quantity is 0' do
      quantity = 0

      expect(Fibber.generate(quantity)).to eq(0)
    end

    it 'returns 1 when quantity is 1' do
      quantity = 1

      expect(Fibber.generate(quantity)).to eq(1)
    end

    it 'returns 1 when quantity is 2' do
      quantity = 2

      expect(Fibber.generate(quantity)).to eq(1)
    end

    it 'returns 2 when quantity is 3' do
      quantity = 3

      expect(Fibber.generate(quantity)).to eq(2)
    end

    it 'returns 3 when quantity is 4' do
      quantity = 4

      expect(Fibber.generate(quantity)).to eq(3)
    end

    it 'returns 5 when quantity is 5' do
      quantity = 5

      expect(Fibber.generate(quantity)).to eq(5)
    end

    it 'returns 8 when quantity is 6' do
      quantity = 6

      expect(Fibber.generate(quantity)).to eq(8)
    end

    it 'returns 144 when quantity is 12' do
      quantity = 12

      expect(Fibber.generate(quantity)).to eq(144)
    end
  end
end
