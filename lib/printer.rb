class Printer
  def jagged_output(values)
    output = 'Nothing to print!'

    return output unless values.is_a? Array

    output = ''

    values.each do |value|
      output += "#{value} "
    end

    output.rstrip
  end
end
