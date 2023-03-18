class Chopper
  def chop(position, array)
    return array.index(position) unless array.empty?
    return -1 if array.empty?
  end

  def sum(array)
    return 'vacio' if array.empty?

    parse_to_spanish_words(array.sum)
  end

  private

  def parse_to_spanish_words(number)
    numbers_to_name = {
      '9' => 'nueve',
      '8' => 'ocho',
      '7' => 'siete',
      '6' => 'seis',
      '5' => 'cinco',
      '4' => 'cuatro',
      '3' => 'tres',
      '2' => 'dos',
      '1' => 'uno',
      '0' => 'cero'
    }
    word_array = []

    number.to_s.split('').each do |number_c|
      word_array.push(numbers_to_name[number_c])
    end

    word_array.compact.join(',')
  end
end
