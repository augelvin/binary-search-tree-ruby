class Node
  attr_reader :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end
end

class Tree
  def initialize(array)
    @root = build_tree(array.sort.uniq)
  end

  def build_tree(array)
    return Node.new(array[0]) if array.length == 1
    return Node.new(array[0], nil, Node.new(array[1])) if array.length == 2

    mid_index = (array.length - 1) / 2
    mid = array[mid_index]
    left = array[0..mid_index - 1]
    right = array[mid_index + 1..-1]
    Node.new(mid, build_tree(left), build_tree(right))
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end

Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]).pretty_print