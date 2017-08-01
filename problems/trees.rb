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

class Node
    attr_accessor :val, :children
    def initialize(val)
        @val = val
        @children = {}
    end
    
    def add_child(val)
        child = Node.new(val)
        @children[val] = child
    end
end

class Tree 
    attr_reader :root
    def initialize(node)
        @root = node
    end
    
    def add_node(val)
        node = Node.new(val)
        @root.children[val] = node
    end
    
    def find_node(val)
        if @root.children[val]
            return @root.children[val]
        end
    end
end

# facebook
# root -> f -> a -> c -> e -> b -> o -> o -> k
# faceswap
# root <> f <> a <> c <> e -> s -> w -> a -> p

def build_tree(data)
    root = Tree.new(Node.new("*"))
    
    data.each do |el|
        tree = root
        
        el.each_char do |ch|
            node = tree.find_node(ch)
            tree.add_node(ch) unless node
            tree = node
        end
    end
end

def search(dataset, prefix)
  node = nil
  prefix.each_char do |ch|
    node = dataset.find_node(ch)
  end
  return node.children
end

tree = build_tree(['facebook', 'faceswap', 'facematch', 'facegram', 'faceword', 'zen', 'zenefits'])
p tree
# mahesh@zenefits.com








