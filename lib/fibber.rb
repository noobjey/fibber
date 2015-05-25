class Fibber
  def self.generate(quantity)
    if (quantity.is_a? String) || (quantity < 1)
      0
    elsif quantity < 3
      1
    else
      Fibber.generate(quantity - 1) + Fibber.generate(quantity - 2)
    end
  end
end
