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
    print root.value
    pre_order(root.left) if root.left
    pre_order(root.right) if root.right
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
    in_order(root.left) if root.left
    print root.value
    in_order(root.right) if root.right
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
    post_order(root.left) if root.left
    post_order(root.right) if root.right
    print root.value
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
    return 0 if root.nil?

    left_height = height(root.left)
    right_height = height(root.right)

    return [left_height, right_height].max + 1
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
    return nil if root.nil?
    if key < root.key
        return search_bst(root.left, key)
    elsif key > root.key
        return search_bst(root.right, key)
    elsif root.key == key
        return root.value
    end
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
    return Node.new(key: key, value: value) if root.nil?

    if key < root.key
        root.left = insert_into_bst(root.left, key, value)
    elsif key > root.key
        root.right = insert_into_bst(root.right, key, value)
    end

    return root
end

# this method searches a binary search tree to find the
# value of the node with the key that is closest to the specified key
# (similar to search_bst but we no longer need an exact match)
# in case of a tie, choose an arbitrary node -- the tests won't cover this
# case

def closest_match_bst(root, key, value)
end

# this method returns true if a tree is a binary search tree, otherwise it
# returns false

def is_bst?(root)
end