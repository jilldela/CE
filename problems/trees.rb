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

# -------------------------------------
# Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.

# You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.

# Example 1:
# Input: 
# 	Tree 1                     Tree 2                  
#           1                         2                             
#          / \                       / \                            
#         3   2                     1   3                        
#        /                           \   \                      
#       5                             4   7                  
# Output: 
# Merged tree:
# 	     3
# 	    / \
# 	   4   5
# 	  / \   \ 
# 	 5   4   7

def merge_trees(t1, t2)
    return t1 if t2.nil?
    return t2 if t1.nil?    
    
    t1.val += t2.val
    t1.left = merge_trees(t1.left, t2.left)
    t1.right = merge_trees(t1.right, t2.right)
    
    return t1
end


# -------------------------------------

# // This is the text editor interface. 
# // Anything you type or change here will be seen by the other person in real time.

# // Search functionality for a large dataset
# // Dataset: words (strings)
# // Input: prefix (string)
# // Output: words that start with the prefix

# // What data structure to store the dataset?
# // Design of the algorithm
# // Analyze time complexity and talk about trade-offs

# Sample dataset: [facebook, faceswap, facematch, facegram, faceword, zen, zenefits]
# Prefix: face
# Output: [facebook, faceswap, facematch, facegram, faceword]
# Prefix: zen
# Output: [zen, zenefits]

# Linear search O(n) 170,000+ words in the english language
# Sort and run a binary search
# Tree

# root
# f   z
# a
# c
# e
# b   s   m   g

# 1. build tree
# 2. traverse down tree until last letter of prefix == root
# 3. return all the children 

# root = *

require 'byebug'

class Node
    attr_accessor :val, :children
    def initialize(val)
        @val = val
        @children = {}
    end
    
    def add_child(val)
        child = Node.new(val)
        @children[val] = child
        child
    end

    def find_child(val)
      return self if self.val == val
      @children[val]
    end
end

# class Tree 
#     attr_reader :root
#     attr_accessor :children
#     def initialize(node)
#         @root = node
#         @children = @root.children
#     end
    
#     def add_child(val)
#         node = Node.new(val)
#         @root.children[val] = node
#     end
    
#     def find_child(val)
#         return @root if @root.val == val
#         if @root.children[val]
#             return @root.children[val]
#         end
#     end

#     def get_children
#       @children.keys
#     end
# end

class Tree
  attr_accessor :root

  def initialize(data)
    @root = Node.new("*")
    
    data.each do |el|
        tree = @root
        
        el.each_char do |ch|
            node = tree.find_child(ch)

            if node
              tree = node
            else
              node = tree.add_child(ch)
              tree = node
            end
        end

        tree.add_child(el)
    end

    @root
  end
end

# facebook
# root -> f -> a -> c -> e -> b -> o -> o -> k
# faceswap
# root <> f <> a <> c <> e -> s -> w -> a -> p

def search(dataset, prefix)
  tree = dataset.root  # start search at root node

  prefix.each_char do |ch|
    node = tree.find_child(ch) 

    if node
      tree = node
    else
      return nil
    end
  end

  get_leaves(tree)
end

def get_leaves(tree)
  leaf_nodes = []

  if tree.children.empty?
    leaf_nodes << tree.val 
  else
    tree.children.values.each do |child|
      leaf_nodes << get_leaves(child)
    end
  end

  leaf_nodes.flatten
end

# if __FILE__ == $PROGRAM_NAME
  tree = Tree.new(['facebook', 'faceswap', 'facematch', 'facegram', 'faceword', 'zen', 'zenefits'])
  test = Tree.new(['food', 'fork', 'feed'])
  p "search: 'face' = #{search(tree, 'face')}"
  p "search: 'zen' = #{search(tree, 'zen')}"
  p "search: 'faceb' = #{search(tree, 'faceb')}"

  p search(test, 'f')
  p search(test, 'fo')
  p search(test, 'foc')
# end

# mahesh@zenefits.com

# ------------------------------------------
# Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
# But the following [1,2,2,null,3,null,3] is not:
#     1
#    / \
#   2   2
#    \   \
#    3    3

def is_symmetric(root) 
    queue = [root, root]
    
    until queue.empty?
        node1 = queue.shift
        node2 = queue.shift
        
        next if node1.nil? && node2.nil?
        return false if node1.nil? || node2.nil?
        return false if node1.val != node2.val
        
        queue << node1.left
        queue << node2.right
        queue << node1.right
        queue << node2.left
    end
    
    true
end






