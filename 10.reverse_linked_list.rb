#Question: Write a function to reverse a singly-linked list.

def reverse(linked_list)
  head = linked_list.head
  new_head = nil

  while !head.nil?
    temp = head.next
    head.next = new_head
    new_head = head
    head = temp
  end

  return new_head
end
