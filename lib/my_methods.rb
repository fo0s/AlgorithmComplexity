# frozen_string_literal: true

# Overriding string class
class String
  def my_reverse
    reversed_string = ''

    (self.length - 1).downto(0).each do |letter|
      reversed_string << self[letter]
    end

    reversed_string
  end

  def my_shuffle
    original = split('')
    original.my_shuffle
    original.join.to_s
  end

  def two_most
    hash_values = {}
    @order = []
    split.each do |word|
      hash_values[word] = hash_values.key?(word) ? hash_values[word] + 1 : 1
    end
    # sort the hash by value. Store for future extraction
    hash_values.sort_by { |value| value[1] }.each do |element|
      @order << [element[0], element[1]]
    end

    "#{@order[-1]}, #{@order[-2]}"
  end

  def my_duplicates
    duplicate_hash = Hash.new(0)
    split.find { |each| (duplicate_hash[each] += 1) == 2 }
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

  def my_shuffle
    (length - 1).downto(1) do |index|
      letter = rand(index + 1)
      self[index], self[letter] = self[letter], self[index]
    end

    self
  end

  def my_pairing
    # Testing in test.rb
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

  def my_fib
    fib_seq = Array(0..self + 1)
    index = 2

    until index == fib_seq.length
      fib_seq[index] = fib_seq[index - 1] + fib_seq[index - 2]
      index += 1
    end

    fib_seq
  end

  def my_shuffle
    original = to_s.split('')
    original.my_shuffle
    original.join.to_i
  end
end
