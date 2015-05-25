class Printer
  def initialize(values)
    @new_line        = "\n"
    @values_per_line = 5
    @output          = ''
    @values          = values
  end

  def jagged_output
    @output = ''

    @values.each_with_index do |value, index|
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

  def better_output
    @output = ''

    @values.each_with_index do |value, index|
      @output += '% 4s' % value
      @output += @new_line if start_a_new_line?(index)
    end

    @output
  end

  def fancy_output
    @output = ''
    max_character_count_in_value = @values.max_by { |value| value.to_s.length }.to_s.length + 1

    @values.each_with_index do |value, index|
      @output += value.to_s.rjust(max_character_count_in_value)
      @output += @new_line if start_a_new_line?(index)
    end

    @output
  end
end
