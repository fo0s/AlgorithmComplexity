require 'my_methods'

describe 'Strings' do
  it 'reverses the letters of a string' do
    expect('Hello there!'.my_reverse).to eq('!ereht olleH')
  end

  it 'shuffles a string or word' do
    expect('apple'.my_shuffle).to_not be('apple')
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

  it 'shuffles an input of array' do
    expect([1, 2, 3, 4, 5, 6, 7].my_shuffle).not_to eq([1, 2, 3, 4, 5, 6, 7])
  end
end

describe 'Numbers--' do
  it 'reverses the values of a number' do
    expect(12345.my_reverse).to eq(54321)
  end

  it 'returns a fibonacci sequence up to 8' do
    expect(5.my_fib).to eq([0, 1, 1, 2, 3, 5, 8])
  end

  it 'returns a shuffled number' do
    expect(1234567.my_shuffle).to_not eq(1234567)
  end
end
