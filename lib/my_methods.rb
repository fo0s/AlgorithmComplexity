class String
    def my_reverse
        reversed_string = ""
        string_length = self.length - 1

        string_length.downto(0).each do |letter|
            reversed_string << self[letter]
        end

        reversed_string
    end
end

class Array
    def my_reverse
        reversed_array = []
        array_length = self.length - 1

        array_length.downto(0).each do |value|
            reversed_array << self[value]
        end

        reversed_array
    end
end

class Integer
    def my_reverse
        input_number = self
        reversed_number = 0

        until input_number == 0 do
            reversed_number = (reversed_number*10 + input_number % 10)
            input_number = input_number / 10
        end

        reversed_number
    end
end