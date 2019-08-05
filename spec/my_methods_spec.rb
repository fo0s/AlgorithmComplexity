# frozen_string_literal: true

require 'my_methods'

describe 'Strings' do
  it 'reverses the letters of a string' do
    expect('Hello there!'.my_reverse).to eq('!ereht olleH')
  end

  it 'shuffles a string or word' do
    expect('apple'.my_shuffle).to_not be('apple')
  end

  it 'displays the 2 most occuring words or characters in a string' do
    expect('a b c d a c d a'.two_most).to eq('["a", 3], ["d", 2]')
  end

  it 'returns any duplicates in a string' do
    expect('the quick brown fox jumps over the lazy dog'.my_duplicates).to eq('the')
  end
end

describe 'Arrays--' do
  it 'reverses the values of an array' do
    expect([1, 2, 3, 4, 5].my_reverse).to eq([5, 4, 3, 2, 1])
  end

  it 'sorts the values of an array using bubble sort' do
    expect([4, 2, 1, 7, 3, 5, 6].my_bubble_sort).to eq([1, 2, 3, 4, 5, 6, 7])
  end

  it 'sorts the values of an array using bubble sort' do
    expect([4, 2, 1, 7, 3, 5, 6].my_quick_sort).to eq([1, 2, 3, 4, 5, 6, 7])
  end

  it 'sorts the values of an array using merge sort' do
    expect([4, 2, 1, 7, 3, 5, 6].my_merge_sort).to eq([1, 2, 3, 4, 5, 6, 7])
  end

  it 'shuffles an input of array' do
    expect([1, 2, 3, 4, 5, 6, 7].my_shuffle).not_to eq([1, 2, 3, 4, 5, 6, 7])
  end

  it 'sorts an array full of binary values' do
    expect([1, 0, 1, 1, 0, 1, 1, 0, 0].my_quick_sort).to eq([0, 0, 0, 0, 1, 1, 1, 1, 1])
  end
end

describe 'Numbers--' do
  it 'reverses the values of a number' do
    expect(12_345.my_reverse).to eq(54_321)
  end

  it 'returns a fibonacci sequence up to 8' do
    expect(5.my_fib).to eq([0, 1, 1, 2, 3, 5, 8])
  end

  it 'returns a shuffled number' do
    expect(1_234_567.my_shuffle).to_not eq(1_234_567)
  end
end
