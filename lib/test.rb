# frozen_string_literal: true

def my_pairing(input)
  @pairs = []
  @list = input
  @pivot = @list[0]
  @pivot_tail = @list[1..-1]
  @output = {}

  return @pairs = [[@list[0], @list[1]]] if @list.size < 3

  (0..(@list.size - 2)).each do |index|
    group = []

    group << [@pivot, @pivot_tail[index]] # first pair

    (1..((@list.size / 2).round - 1)).each do |index2|
      current_pair = [@pivot_tail[index + index2], @pivot_tail[index - index2]]
      group << current_pair
    end

    @pairs << group
  end

  @pairs.each_with_index { |pairings, days| @output[(days + 1)] = pairings }

  @output
  end

p my_pairing(%w[Alice Bob Charly Dan])
