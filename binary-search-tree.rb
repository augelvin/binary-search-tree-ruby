class Node
    include Comparable

  def initialize
    @mid
    @left
    @right
  end
end

class Tree
  def initialize(array)
    @root = build_tree(array)
  end

  def build_tree(array)
  end
end
