require 'my_methods'

describe 'Strings' do
    it 'reverses the letters of a string' do
        expect('Hello there!'.my_reverse).to eq('!ereht olleH')
    end
end

describe 'Arrays--' do
    it 'reverses the values of an array' do
        expect([1, 2, 3, 4, 5].my_reverse).to eq([5, 4, 3, 2, 1])
    end
end

describe 'Numbers--' do
    it 'reverses the values of a number' do
        expect(12345.my_reverse).to eq(54321)
    end
end