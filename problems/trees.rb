# Given two binary trees, write a function to check if they are equal or not.

# Two binary trees are considered equal if they are structurally identical and the nodes have the same value.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?
  
  if p.val == q.val
    return is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
  else
    return false
  end
end

# ----------------------------

# Invert a binary tree.

def invert_tree(root)
    return nil if root.nil?
    
    right = invert_tree(root.right)
    left = invert_tree(root.left)
    
    root.right = left
    root.left = right
    
    root
end
