# Algorithm Complexity

> In computer science, the time complexity is the computational complexity that describes the amount
> of time it takes to run an algorithm. Time complexity is commonly estimated by counting the number of
> elementary operations performed by the algorithm, supposing that each elementary operation takes a fixed
> amount of time to perform. Thus, the amount of time taken and the number of elementary operations
> performed by the algorithm are taken to differ by at most a constant factor.

My little area to play around with remaking Ruby's methods in an attempt to understand the complexity behind them.

### Graph builder

Using the `pi_charts` and `sinatra` gems to build graphs representing the processing time of the methods in order to be able to tweak them.

![chart][chart]

Usage:  
`ruby ./lib/build_graphs.rb`  

This will start a sinatra session. Open a new tab on your browser and in the address bar type:

`localhost:4567`

Give a minute to crunch the numbers (fibonacci takes the longest).
A graph should appear on your screen.

---

### Ruby Timer

A simple timer class made to time the amount of time it takes for a block of code to be completed.

Usage:  
`Timer.time { [1, 2, 3, 4, 5].my_reverse }`  
`p Timer.elapsedTime `

> => 1.9964e-05

---

### Shuffle

A simple shuffle system that computates a random number between 1 and the legth of the input, extracts that then loops until the length of the input is 0. The main impliment is made using array. The string and integer versions are broken into an array then has the array algorithm is parsed on them. The system can be made better, this is the basic version.

Usage:  
`[1, 2, 3, 4, 5].my_shuffle`  

> => [4, 5, 2, 3, 1]

### Reverse

Custom reverse method. Can reverse strings, integers and arrays.

Usage:  
`[1, 2, 3, 4, 5].my_reverse`

> => [5, 4, 3, 2, 1]

---

### 2 most

Takes a string of words or characters, sorts it into values then displays the 2 most occuring.

Usage:  
`'a b c d a c d a'.two_most`  
> => "[\"a\", 3], [\"d\", 2]"

---

### Find duplicates

Given a string of words, it returns the duplicates.

Usage:  
`'the quick brown fox jumps over the lazy dog'.my_duplicates`  
> => "the"

---

### Sort

Custom sorting methods. Sorting options; my_bubble_sort and my_quick_sort. Can currently only sort arrays.

| Description | Illustrated image |
| :---: | :---: |
| Bubble sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent pairs and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. | ![bubble sort][bubble] |


Usage:  
`[5, 2, 4, 1, 3].my_bubble_sort`  
> => [1, 2, 3, 4, 5]

---

| Description | Illustrated image |
| :---: | :---: |
Quick sort is an efficient sorting algorithm, serving as a systematic method for placing the elements of a random access file or an array in order. |  ![quick sort][quick]

Usage:  
`[5, 2, 4, 1, 3].my_quick_sort`  
> => [1, 2, 3, 4, 5]

---

| Description | Illustrated image |
| :---: | :---: |
Merge sort is a rock star when it comes to data sorting. It's the favourite among computer scientists as it has the best trade offs between speed and memory.
It uses the divide and concur method. Split the element into it's smallest unit (1), then compare left and right elements merging while doing so. |  ![merge sort][merge]

Usage:  
`[5, 2, 4, 1, 3].my_merge_sort`  
> => [1, 2, 3, 4, 5]

---

### Fibonacci Sequence

| Description | Illustrated image |
| :---: | :---: |
| In mathematics, the Fibonacci numbers form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. | ![fib seq][fibonacci]

Usage:  
`8.my_fib`  
> => [0, 1, 1, 2, 3, 5, 8, 13, 21]

--- 

### Useful links/guides/resources

[How many ways can you arrange a deck of cards? - Yannay Khaikin](https://www.youtube.com/watch?v=uNS1QvDzCVw&ab_channel=TED-Ed)  
[The Hair Algorithm - Computerphile](https://www.youtube.com/watch?v=CpXaH77B8xg)  
[Sorting Secret - Computerphile](https://www.youtube.com/watch?v=pcJHkWwjNl4)  
[Getting Sorted & Big O Notation - Computerphile](https://www.youtube.com/watch?v=kgBjXUE_Nwc)

[bubble]: ./lib/images/Bubble-sort-example-300px.gif "Wikipedia's Bubble sort illustration"
[quick]: ./lib/images/220px-Sorting_quicksort_anim.gif "Wikipedia's Quick sort illustration"
[fibonacci]: ./lib/images/34_21-FibonacciBlocks.png "Wikipedia's Fibonacci number illustration"
[chart]: ./charts/chart.png "Example of the charts in action"
[merge]: ./lib/images/merge-sort.gif "Wikipedia's Merge sort illustration"
