##Merge sort!

###Why Merge Sort?
Merge sort is the first powerful sorting algorithm that you will encounter in the wilds of the real world (baked into Safari and Firefox.)  It uses an extremely efficient application of the "Divide and Conquer" concept to lists of elements.

Merge Sort works on the basic principal of dividing your list into sub-lists (recursively) until your sub-lists are short enough to sort quickly with another strategy.  Once you have small sorted sub-lists, you carefully merge them back together into one, creating a sorted version of your original lists.

![Merge Sort visualization](https://webdocs.cs.ualberta.ca/~holte/T26/Lecture6Fig6.gif)

There are TWO functions that work together to accomplish a Merge Sort:

-  A `merge_sort` function that takes an array, splits the array in two, calls `merge_sort` to sort each half of the array, and then calls a `merge` function to put the sorted halves back together.  The `merge_sort` function **is recursive**, so think about a "base case".

-  A `merge` function that takes two arrays as parameters, and combines them to create one sorted list . The `merge` function **can be either iterative or recursive**. We're going to work on the iterative case first.

*Note: the merge sort algorithm can also be implemented with iterative (non-recursive) code, but it is significantly harder.*

###Make your own merge sort implementation!
Create a `merge_sort` that will sort a list of student names from this class!

```ruby
[ "Bryan","Sarah", "Ilter", "Jacquelyn", "Adam",
  "Herman", "Phillbert", "Justin", "Anna", "Nathan",
  "John", "Paul", "Jonathan", "Marcelo", "Eric",
  "Rene", "Ayush", "Joanne", "Arthur", "Andrea" ]

```
