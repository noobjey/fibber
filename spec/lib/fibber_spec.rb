require './lib/fibber'

describe Fibber do
  describe 'fibber.generate()' do
    it 'returns zero when there is no argument' do
      instance = Fibber.new

      expect(instance.generate).to eq(0)
    end
  end
end
