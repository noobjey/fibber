require './lib/fibber'

describe Fibber do
  describe 'fibber.generate()' do
    it 'returns zero when there is no quantity' do
      instance = Fibber.new
      empty_quantity = ''

      expect(instance.generate(empty_quantity)).to eq(0)
    end

    it 'returns 0 when quantity is 0' do
      instance = Fibber.new
      quantity = 0

      expect(instance.generate(quantity)).to eq(0)
    end

    it 'returns 1 when quantity is 1' do
      instance = Fibber.new
      quantity = 1

      expect(instance.generate(quantity)).to eq(1)
    end
  end
end
