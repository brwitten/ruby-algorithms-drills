class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

def print_linked_list head
  while head.val && head.next != nil do
    print "#{head.val} "
    head = head.next
  end
  print "#{head.val} " #end of list
end

def reverse_linked_list head
    reversedPart = Node.new(nil,nil)
    current = head
    while current != nil do
      next_node = current.next
      current.next = reversedPart
      reversedPart = current
      current = next_node
  end
  head = reversedPart
  puts print_linked_list head
  head
end

head = Node.new(3,Node.new(4,Node.new(6, Node.new(12, Node.new(33, Node.new(34, nil))))))
head2 = Node.new(0,Node.new(2, Node.new(5, Node.new(5, Node.new(6, nil)))))
reverse_linked_list head
reverse_linked_list head2
