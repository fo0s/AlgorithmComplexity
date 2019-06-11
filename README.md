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