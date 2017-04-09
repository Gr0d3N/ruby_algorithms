# Question: Write a function to determine whether two singly-linked lists converge. Write a function to find the intersection between two singly-linked lists.

class Node
  attr_accessor :data, :next

  def is_converging?(head1, head2)
    return false if head1.nil? || head2.nil?

    while !head1.nil?
      head1 = head1.next
    end

    while !head2.nil?
      head2 = head2.next
    end

    return head1.equal?(head2)
  end

  def intersection(head1, head2)
    length1 = 0
    length2 = 0

    while !head1.nil?
      head1 = head1.next
      length1 += 1
    end

    while !head2.nil?
      head2 = head2.next
      length2 += 2
    end

    diff = (length1 - length2).abs

    if length1 > length2
      while diff > 0
        head1  = head1.next
        diff -= 1
      end
    else
      while diff > 0
        head2 = head2.next
        diff -= 1
      end
    end

    while !head1.nil?
      return head1 if head1.equal?(head2)
      head1 = head1.next
      head2 = head2.next
    end
  end
end
