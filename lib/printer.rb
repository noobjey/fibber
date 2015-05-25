class Printer
  def initialize
    @new_line        = "\n"
    @values_per_line = 5
    @output          = ''
  end

  def jagged_output(values)
    bad_input = 'Nothing to print!'

    return bad_input unless values.is_a? Array

    @output = ''

    values.each_with_index do |value, index|
      @output += '%s ' % value
      @output.rstrip! if start_a_new_line?(index)
      @output += @new_line if start_a_new_line?(index)
    end

    @output.rstrip!
  end

  def start_a_new_line?(index)
    reached_value_per_line?(index) unless first_value?(index)
  end

  def reached_value_per_line?(index)
    (index + 1) % @values_per_line == 0
  end

  def first_value?(index)
    index == 0
  end

  def better_output(values)
    @output = ''

    values.each_with_index do |value, index|
      @output += '% 4s' % value
      @output += @new_line if start_a_new_line?(index)
    end

    @output
  end
end
