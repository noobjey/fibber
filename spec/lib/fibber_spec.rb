require './lib/fibber'

describe Fibber do
  describe 'some class behaviour' do
    it 'does this' do
      instance = Fibber.new

      expect(instance.some_method).to eq(true)
    end
  end
end
