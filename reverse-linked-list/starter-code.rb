#A Node Class
class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

#method for nicely printing linked list
def print_linked_list head
  while head.val && head.next != nil do
    print "#{head.val} "
    head = head.next
  end
  print "#{head.val} " #end of list
end
####################

def reverse_linked_list head
  ##your code here!##
end

head = Node.new(3,Node.new(4,Node.new(6, Node.new(12, Node.new(33, Node.new(34, nil))))))
reverse_linked_list head
