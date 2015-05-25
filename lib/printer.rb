class Printer
  def jagged_output(values)
    output = 'Nothing to print!'
    space = ' '
    new_line = "\n"

    return output unless values.is_a? Array

    output = ''

    values.each_with_index do |value, index|
      if (index + 1) % 5 == 0 && index != 0
        output += "#{value}#{new_line}"
      else
        output += "#{value}#{space}"
      end
    end

    output.rstrip
  end
end
