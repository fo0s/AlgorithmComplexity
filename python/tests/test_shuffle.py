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
input1 = 'this is a test'
# The rusult should be something similar to;
#
# ['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't']
# ['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't']
# ['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', 's', 't', 'e', ' ', 't']
# ['t', 'h', 'i', 'e', ' ', 'i', 's', ' ', 'a', 's', 't', 's', ' ', 't']
# ['t', 'h', 'i', 'e', ' ', 'i', 's', ' ', 'a', 't', 's', 's', ' ', 't']
# ['t', 'h', 'i', 't', ' ', 'i', 's', ' ', 'a', 'e', 's', 's', ' ', 't']
# ['t', 'h', 'i', 't', ' ', 'i', 'a', ' ', 's', 'e', 's', 's', ' ', 't']
# ['t', 'h', 'i', ' ', ' ', 'i', 'a', 't', 's', 'e', 's', 's', ' ', 't']
# ['t', 'h', 'i', ' ', ' ', 'a', 'i', 't', 's', 'e', 's', 's', ' ', 't']
# ['t', 'h', 'a', ' ', ' ', 'i', 'i', 't', 's', 'e', 's', 's', ' ', 't']
# ['t', 'h', 'a', ' ', ' ', 'i', 'i', 't', 's', 'e', 's', 's', ' ', 't']
# ['t', 'h', 'a', ' ', ' ', 'i', 'i', 't', 's', 'e', 's', 's', ' ', 't']
# ['a', 'h', 't', ' ', ' ', 'i', 'i', 't', 's', 'e', 's', 's', ' ', 't']

# >> 'aht  iitsess t'
