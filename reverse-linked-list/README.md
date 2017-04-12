## Reverse a Linked List (in Ruby!)

### Prompt ###

Your task is to reverse a linked list using Ruby.

*Examples:*

Given the Linked List:

```3 -> 4 -> 6 -> 12 -> 33 -> 34 ```

return:

```34 -> 33 -> 12 -> 6 ->  4 -> 3```

Given the Linked List:

```0 -> 2 -> 5 -> 5 -> 6```

return:

```6 -> 5 -> 5 -> 2 -> 0```

### Hints and Helpers ###

Since the data structure we're working with doesn't yet exist in Ruby, we'll have to create it. In the starter code, you'll see that there is the definition for a Node:

```rb
class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

```

In addition, there is a helper function that allows you to print out a given linked list in a nice format. Feel free to check it out in the starter code.

Think about how you would do this as a human. Make sure to pseudo-code and think out the process first before trying it in Ruby. You may use the starter code as a template with the Node class and helper function to start.
