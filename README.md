# How Many Numbers III (4 KYU)

Solving [this](https://www.codewars.com/kata/5877e7d568909e5ff90017e6/train/ruby) codewars challenge.

## Description

We want to generate all the numbers of three digits where:

- the sum of their digits is equal to 10.
- their digits are in increasing order (the numbers may have two or more equal contiguous digits)

The numbers that fulfill the two above constraints are: `118, 127, 136, 145, 226, 235, 244, 334`

Make a function that receives two arguments:

- the sum of digits value
- the desired number of digits for the numbers

The function should output an array with three values: [1,2,3]

1 - the total number of possible numbers </br>
2 - the minimum number </br>
3 - the maximum number </br>

The example given above should be:

`find_all(10, 3) == [8, 118, 334]`

If we have only one possible number as a solution, it should output a result like the one below:

`find_all(27, 3) == [1, 999, 999]`

If there are no possible numbers, the function should output the empty array.

`find_all(64, 4) == []`

The number of solutions climbs up when the number of digits increases.

`find_all(35, 6) == [123, 116999, 566666]`

Features of the random tests:

- Number of tests: `112`
- Sum of digits value between `20` and `65`
- Amount of digits between `2` and `17`
