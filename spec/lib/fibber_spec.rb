require './lib/fibber'

describe Fibber do
  describe 'fibber.generate()' do
    it 'returns zero when there is no quantity' do
      instance = Fibber.new
      empty_quantity = ''

      expect(instance.generate(empty_quantity)).to eq(0)
    end

    it 'returns zero when quantity is zero' do
      instance = Fibber.new

      expect(instance.generate(0)).to eq(0)
    end
  end
end
