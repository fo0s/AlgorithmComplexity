# Overriding string class
class String
  def my_reverse
    reversed_string = ''
    string_length = length - 1

    string_length.downto(0).each do |letter|
      reversed_string << self[letter]
    end

    reversed_string
  end
end

# Overriding array class
class Array
  def my_reverse
    reversed_array = []

    (length - 1).downto(0).each do |value|
      reversed_array << self[value]
    end

    reversed_array
  end

  # Bubble sort, slow but effective
  def my_bubble_sort
    each_index do |index|
      (length - 1).downto(index) do |i|
        self[i - 1], self[i] = self[i], self[i - 1] if self[i - 1] > self[i]
      end
    end

    self
  end

  def my_quick_sort
    return self if length <= 1
    pivot = self[0]
    less, greatereq = self[1..-1].partition { |x| x < pivot }
    less.my_quick_sort + [pivot] + greatereq.my_quick_sort
  end

end

# Overriding integer class
class Integer
  def my_reverse
    input_number = self
    reversed_number = 0

    until input_number.zero?
      reversed_number = (reversed_number * 10 + input_number % 10)
      input_number /= 10
    end

    reversed_number
  end
end
