class Node
    attr_accessor :left, :right, :key, :value

    def initialize(options={})
        self.key = options[:key]
        self.value = options[:value] || self.key
        self.left = options[:left]
        self.right = options[:right]
    end
end

# print the tree's pre_order traversal
#
#      1
#    /   \
#   2     3
#  / \    /
# 4   5  6

# should print:
# 124536
def pre_order(root)
end

# print the tree's in_order traversal
#
#      1
#    /   \
#   2     3
#  / \    /
# 4   5  6

# should print:
# 425163
def in_order(root)
end

# print the tree's post_order traversal
#
#      1
#    /   \
#   2     3
#  / \    /
# 4   5  6

# should print:
# 452631
def post_order(root)
end

# return the number of levels in the tree
#
#      1
#    /   \
#   2     3
#  / \    /
# 4   5  6
#       /
#      7

# should return 3
def height(root)
end

# print the tree's level_order traversal
#
#      1
#    /   \
#   2     3
#  / \    /
# 4   5  6

# should print:
# 123456
def level_order(root)
end

# print the top view of the tree. This means you should print
# the values of the tree you would see if you were looking down on the tree
# from above the root node and read left to right.
#
#      1
#    /   \
#   2     3
#  / \    /
# 4   5  6
#       /
#      7

# should print: 4213
def top_view(root)
end

# find the value at the node with the specified key in the binary search tree
# here is an example of a binary search tree (keys shown):
#      8
#    /   \
#   4     15
#  / \    /
# 3   5  10

def search_bst(root, key)
end

# insert a new key/value pair into the binary search tree
# here is an example of inserting the key 7
#
#      8                8
#    /   \            /   \
#   4     15  -->    4    15
#  /      /         / \   /
# 3      10        3   7 10

def insert_into_bst(root, key, value)
end

# this method searches a binary search tree to find the
# value of the node with the key that is closest to the specified key
# (similar to search_bst but we no longer need an exact match)
# in case of a tie, choose an arbitrary node -- the tests won't cover this
# case

def closest_match_bst(root, key)
end

# this method returns true if a tree is a binary search tree, otherwise it
# returns false

def is_bst?(root)
end