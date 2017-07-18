# Linked List: Detect a Cycle

# A linked list is said to contain a cycle 
# if any node is visited more than once while traversing the list.

# It has one parameter: a pointer to a Node object named that points to the head of a linked list. 
# Your function must return a boolean denoting whether or not there is a cycle in the list. 
# If there is a cycle, return true; otherwise, return false.

# Note: If the list is empty,  will be null.

# Input Format
# LinkedList head

# Constraints
# 0 <= list size <= 100

# Output Format
# If the list contains a cycle, your function must return true. 
# If the list does not contain a cycle, it must return false. 

class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = next
  end
end

class LinkedList
  def initialize
    @head = head
    @tail = nil
  end
end

