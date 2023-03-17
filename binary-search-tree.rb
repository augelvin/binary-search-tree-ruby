class Node
  def initialize(mid, left, right)
    @mid = mid
    @left = left
    @right = right
  end
end

class Tree
  def initialize(array)
    @root = build_tree(array.sort.uniq)
  end

  def build_tree(array)
  end
end
