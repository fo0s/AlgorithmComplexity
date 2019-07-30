from random import *
from math import floor

# A simple shuffle class to randomise
# input for the sorting algorithms


class ShuffleNumbersWords:
    def shuffle(self, input):
        if type(input) is not list:
            if type(input) is str:
                txt_convert = self.mix_it_up(list(input))
                shuffled_input = "".join(txt_convert)
            if type(input) is int:
                int_convert = self.mix_it_up([int(x) for x in str(input)])
                shuffled_input = int(''.join(map(str, int_convert)))
        else:
            shuffled_input = self.mix_it_up(input)

        return shuffled_input

    def mix_it_up(self, input):
        shuf_len = len(input)

        while shuf_len > 1:
            i = int(floor(random() * shuf_len))
            # Shorten index
            shuf_len -= 1
            # Swop characters around
            input[i], input[shuf_len] = input[shuf_len], input[i]

        return input
