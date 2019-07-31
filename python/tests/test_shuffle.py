import pytest
from bin.shuffle import ShuffleNumbersWords


class TestShuffle:
    mix = ShuffleNumbersWords()

    def test_shuffles_string(self):
        assert self.mix.shuffle(input1) != input1

    def test_shuffles_integer(self):
        assert self.mix.shuffle(input2) != input2

    def test_shuffles_list(self):
        assert self.mix.shuffle(input3) == input3


input3 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
input2 = 1234567890
input1 = 'This is a test!?'
# The rusult should be something similar to;
#
# ['T', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't', '!', '?']
# ['T', 'h', 'i', 's', '?', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't', '!', ' ']
# ['T', 'h', 'i', 's', '?', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't', '!', ' ']
# ['T', 'h', 'i', 's', '?', 'i', 's', ' ', 'a', 't', 't', 'e', 's', ' ', '!', ' ']
# ['T', 'h', 'i', 's', 's', 'i', 's', ' ', 'a', 't', 't', 'e', '?', ' ', '!', ' ']
# ['T', 'h', 'i', 'e', 's', 'i', 's', ' ', 'a', 't', 't', 's', '?', ' ', '!', ' ']
# ['T', 'h', 'i', 'e', 't', 'i', 's', ' ', 'a', 't', 's', 's', '?', ' ', '!', ' ']
# ['T', 't', 'i', 'e', 't', 'i', 's', ' ', 'a', 'h', 's', 's', '?', ' ', '!', ' ']
# [' ', '!', ' ', '?', 's', 's', 'h', 't', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
# [' ', '!', ' ', '?', 's', 's', 't', 'h', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
# [' ', '!', 't', '?', 's', 's', ' ', 'h', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
# [' ', '!', 't', '?', 's', 's', ' ', 'h', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
# [' ', '!', 't', 's', '?', 's', ' ', 'h', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
# [' ', '!', 's', 't', '?', 's', ' ', 'h', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
# [' ', '!', 's', 't', '?', 's', ' ', 'h', ' ', 's', 'i', 'a', 'e', 'i', 't', 'T']
#
# ' !st?s h siaeitT'
