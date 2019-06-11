# Algorithm Complexity

> In computer science, the time complexity is the computational complexity that describes the amount
> of time it takes to run an algorithm. Time complexity is commonly estimated by counting the number of
> elementary operations performed by the algorithm, supposing that each elementary operation takes a fixed
> amount of time to perform. Thus, the amount of time taken and the number of elementary operations
> performed by the algorithm are taken to differ by at most a constant factor.

My little area to play around with remaking Ruby's methods in an attempt to understand the complexity behind them.

### Ruby Timer

A simple timer class made to time the amount of time it takes for a block of code to be completed.

Usage:  
`Timer.time { [1, 2, 3, 4, 5].my_reverse }`  
`p Timer.elapsedTime `

> => 1.9964e-05

### Reverse

Custom reverse method. Can reverse strings, integers and arrays.

Usage:  
`[1, 2, 3, 4, 5].my_reverse`

> => [5, 4, 3, 2, 1]

### Sort

Custom sorting methods. Sorting options; bubble_sort and and quick_sort. Can currently only sort arrays.

| Sorting method | Description | Illustrated image |
| :---: | :---: | :---: |
| **Bubbel Sort** | Bubble sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent pairs and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. | ![bubble sort][bubble] |

Usage:  
`[5, 2, 4, 1, 3].bubble_sort`  
> => [1, 2, 3, 4, 5]

| Sorting method | Description | Illustrated image |
| :---: | :---: | :---: |
| **Quick sort**| Quick sort is an efficient sorting algorithm, serving as a systematic method for placing the elements of a random access file or an array in order. |  ![quick sort][quick]

Usage:  
`[5, 2, 4, 1, 3].quick_sort`  
> => [1, 2, 3, 4, 5]

[bubble]: ./lib/images/Bubble-sort-example-300px.gif "Wikipedia's Bubble sort illustration"
[quick]: ./lib/images/220px-Sorting_quicksort_anim.gif "Wikipedia's Quick sort illustration"