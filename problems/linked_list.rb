# Given a singly linked list of integers l and an integer k, 
# remove all elements from list l that have a value equal to k.

# NOTE: Try to solve this task in O(n) time using O(1) additional space, 
# where n is the number of elements in the list, 
# since this is what you'll be asked to do during an interview.

# EXAMPLE:
# For l = [3, 1, 2, 3, 4, 5] and k = 3, the output should be
# removeKFromList(l, k) = [1, 2, 4, 5];
# For l = [1, 2, 3, 4, 5, 6, 7] and k = 10, the output should be
# removeKFromList(l, k) = [1, 2, 3, 4, 5, 6, 7].

# Definition for singly-linked list:
# class ListNode
#   attr_accessor :value, :next
#   def initialize(val)
#     @value = val
#     @next = nil
# end
#
def removeKFromList(l, k)

end

# ---------------------------------------------------

# Merge two sorted linked lists and return it as a new list. 
# The new list should be made by splicing together the nodes of the first two lists.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def merge_two_lists(l1, l2)
    l1.val
end

# -------------------------------

# Reverse a singly linked list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def reverse_list(head)
    prev = nil
    current = head
    
    while current != nil
        next_node = current.next
        current.next = prev
        prev = current
        current = next_node
    end
    
    return prev
end

# ----------------------------------
# Remove all elements from a linked list of integers that have value val.

# Example
# Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
# Return: 1 --> 2 --> 3 --> 4 --> 5

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def remove_elements(head, val)
    return head if head.nil?
    
    prev = head
    current = head
    
    
    while current != nil
        if head.val == val
            current = head.next
            head = head.next
        elsif current.val == val
            prev.next = current.next
            current = current.next
        else
            prev = current
            current = current.next
        end
            
    end
    
    head
end
