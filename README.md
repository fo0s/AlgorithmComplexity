# Algorithm Complexity

> In computer science, the time complexity is the computational complexity that describes the amount
> of time it takes to run an algorithm. Time complexity is commonly estimated by counting the number of
> elementary operations performed by the algorithm, supposing that each elementary operation takes a fixed
> amount of time to perform. Thus, the amount of time taken and the number of elementary operations
> performed by the algorithm are taken to differ by at most a constant factor.

My little area to play around with remaking Ruby's methods in an attempt to understand the complexity behind them. 

## Graph builder

Using the `pi_charts` and `sinatra` gems to build graphs representing the processing time of the methods in order to be able to tweak them.

Usage:  
`ruby lib/build_graphs.rb`  

This will start a sinatra session. Open a new tab on your browser and in the address bar type:

`localhost:4567`

Give it a minute to crunch the numbers.
A graph should appear on your screen.

I've also added the `memory_checker` gem to compare processing speed to memory usage on a small vs large data set.

Usage:  

> Access the file and uncomment the method you want to test. Select the data range (1000 or 100 000), then save the file and run: 
`ruby lib/memory_checker.rb` from the command line.

Memory values will be printed to the terminal. you want to look at the top for:
`Total allocated:`

---

![other][other]

---

### Ruby Timer

A simple timer class made to time the amount of time it takes for a block of code to be completed.

Usage:  
`Timer.time { [1, 2, 3, 4, 5].my_reverse }`  
`p Timer.elapsedTime`

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

### Fibonacci Sequence

| Description | Illustrated image |
| :---: | :---: |
| In mathematics, the Fibonacci numbers form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. | ![fib seq][fibonacci]

Usage:  
`8.my_fib`  
> => [0, 1, 1, 2, 3, 5, 8, 13, 21]

---

## Sort

Custom sorting methods. Sorting options; my_bubble_sort, my_quick_sort, my_merge_sort, my_selection_sort. Can currently only sort arrays.

**Below results are generated using shuffled data between 500 - 100 000 in length. Anything over that takes way too long for my processor to handle (Tested on 6th gen Intel i5 (4.2gHz), 16Gig Ram, 2 x AMD Radeon RX580 nitro GPUs running Kali Linux)**

---

![sort][sort]

---
| Description | Small data (1000) | Large data (100 000) | Illustrated image |
| :---: | :---: | :---: | :---: |
| Bubble sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent pairs and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. |Elapsed time: 1.474735882 <br><br> Memory: 9.96MB | Elapsed time: NA <br><br> Memory: NA | ![bubble sort][bubble] |

---

| Description | Small data (1000) | Large data (100 000) | Illustrated image |
| :---: | :---: | :---: | :---: |
Quick sort is an efficient sorting algorithm, serving as a systematic method for placing the elements of a random access file or an array in order. | Elapsed time: 0.047781494 <br><br> Memory: 0.32MB | Elapsed time: 3.131953683 <br><br> Memory: 44.31 MB | ![quick sort][quick]

---

| Description | Small data (1000) | Large data (100 000) | Illustrated image |
| :---: | :---: | :---: | :---: |
Merge sort is a rock star when it comes to data sorting. It's the favourite among computer scientists as it has the best trade offs between speed and memory. It uses the divide and concur method. Split the element into it's smallest unit (1), then compare left and right elements merging while doing so. | Elapsed time: 0.057409008 <br><br> Memory: 0.36MB | Elapsed time: 3.875032641 <br><br> Memory: 44.31 MB | ![merge sort][merge]

---

| Description | Small data (1000) | Large data (100 000) | Illustrated image |
| :---: | :---: | :---: | :---: |
Selection sort is only effective on smaller data sets. It sorts by starting at the beginning of the set and scanning for the lowest value. Once it gets to the end of the set, it swops the lowest value with the beginning value, then moves on to the next value and starts the sequence again.  | Elapsed time: 0.06875948 <br><br> Memory: 0.08MB | Elapsed time: 327.051645655 <br><br> Memory: 7.99 MB | ![selection sort][selection]

---

| Description | Small data (1000) | Large data (100 000) | Illustrated image |
| :---: | :---: | :---: | :---: |
Insertion sort is a really simple sorting algorithm that is best used on smaller data sets. Better than both bubble and selection sort, it is the closest to how a player would sort a hand of cards, ie bridge. It starts from the beginning of the list and compares it's value to the value on the left. If the value is higher than it's own, it will keep going down the list until it is the lowest value. It's simplicity means it's great at sorting data as it receives it, ie real time online data.  | Elapsed time: 0.071991705 <br><br> Memory: 40 bytes | Elapsed time: 363.983443438 <br><br> Memory: 40 bytes | ![insertion sort][insertion]

---

### Useful links/guides/resources

[How many ways can you arrange a deck of cards? - Yannay Khaikin](https://www.youtube.com/watch?v=uNS1QvDzCVw&ab_channel=TED-Ed)  
[The Hair Algorithm - Computerphile](https://www.youtube.com/watch?v=CpXaH77B8xg)  
[Sorting Secret - Computerphile](https://www.youtube.com/watch?v=pcJHkWwjNl4)  
[Getting Sorted & Big O Notation - Computerphile](https://www.youtube.com/watch?v=kgBjXUE_Nwc)

TODO:

- Make selection sort more efficient
- ~~Insertion sort~~
- Shell sort
- Comb sort
- Intro sort
- Tree sort

[bubble]: ./lib/images/Bubble-sort-example-300px.gif "Wikipedia's Bubble sort illustration"
[quick]: ./lib/images/220px-Sorting_quicksort_anim.gif "Wikipedia's Quick sort illustration"
[fibonacci]: ./lib/images/34_21-FibonacciBlocks.png "Wikipedia's Fibonacci number illustration"
[sort]: ./charts/sorts.png "Sorting algos in action"
[other]: ./charts/others.png
[merge]: ./lib/images/merge-sort.gif "Wikipedia's Merge sort illustration"
[selection]: ./lib/images/Selection-Sort.gif "Selection sort illustration"
[insertion]: ./lib/images/Insertion-sort-example-300px.gif "Wikipedia's Insertion sort illustration"
