# The sequence begins with the numbers 0 and 1. From there, each element is the sum of the previous
# two elements.
# Start with 0 and 1
# 0 plus 1 is (1)
# 1 plus 1 is (2)
# 1 plus 2 is (3)
# 2 plus 3 is (5)
# 3 plus 5 is (8)
# 5 plus 8 is (13)
# 8 plus 13 is (21)

class Fibber
  def generate(quantity)
    if (quantity.is_a? String) || (quantity < 1)
      0
    elsif quantity < 3
      1
    else
      Fibber.new.generate(quantity - 1) + Fibber.new.generate(quantity - 2)
    end
  end
end
