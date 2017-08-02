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
  tree = dataset.root
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
  tree = Tree.new(['facebook', 'faceswap', 'facematch', 'facegram', 'faceword', 'facebag', 'zen', 'zenefits'])
  foo = Tree.new(['food', 'fork', 'feed'])
  p input: ['facebook', 'faceswap', 'facematch', 'facegram', 'faceword', 'zen', 'zenefits']
  p "search 'face' = #{search(tree, 'face')}"
  p "search 'zen' = #{search(tree, 'zen')}"
  p "search 'faceb' = #{search(tree, 'faceb')}"

  p search(foo, 'f')
  p search(foo, 'fo')
  p search(foo, 'foc')
# end

# mahesh@zenefits.com
