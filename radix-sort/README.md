# Radix Sort

**Radix Sort** is a unique sorting algorithm. This sorting algorithm sorts data with integer keys of each element (in an array) by grouping keys by the individual digits which share the same significant position and value. This can be done with the least significant digit (LSD) or the most significant digit (MSD). The difference between LSD or MSD is just a fancy way of saying the last or first digit in the number.

What does this actually mean? Let's do an example.

What if we had this set of numbers?

```[493, 812, 715, 710, 195, 437, 582, 340,   385]```

Let's start with the 1's place digits. So that would be a value of 3 for 493, 2 for 812, and so on. We group them in "buckets". Visually, that looks like this:

| 1's Digit       | numbers         |
| ------------- |:-------------:|
| 0   | 340, 710 |
| 1   |  |
| 2| 812, 582 |
| 3| 493    |
| 4| |
| 5| 715,195, 385 |
| 6| |
| 7|  437     |
| 8|      |
| 9|      |

Now our array looks like this:

```[340, 710, 812,   582,   493,  715,   195,   385,   437]```

Great. Next, we do the same thing, but with the 10's digit:


| 10's Digit       | numbers         |
| ------------- |:-------------:|
| 0   |  |
| 1   | 710, 812, 715 |
| 2|  |
| 3|  437  |
| 4| 340 |
| 5|  |
| 6| |
| 7|       |
| 8|  582, 385    |
| 9|   493, 195   |

And our new array based on this:

```[710, 812,715,437,340,582,385,493,195]```

And now the hundred's digit:

| 100's Digit       | numbers         |
| ------------- |:-------------:|
| 0   |  |
| 1   | 195 |
| 2|  |
| 3| 340, 385   |
| 4| 437, 493 |
| 5| 582 |
| 6| |
| 7|  710,715     |
| 8|  812    |
| 9|      |

And our array is sorted! Pretty slick, huh?

```[195,   340,   385,   437,   493,   582,   710,   715,   812]```

If we had numbers in our array that had 4 digits, we would have to do this iteration again - so the number of iterations is dependent on the maximum number of digits for an element in the array.


Resources:

- [wiki](https://en.wikipedia.org/wiki/Radix_sort)
- [visual radix (see radix)](https://visualgo.net/sorting)
- [another visualization](https://www.cs.usfca.edu/~galles/visualization/RadixSort.html)
