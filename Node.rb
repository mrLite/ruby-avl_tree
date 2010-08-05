class Node
  attr_accessor :key, :left, :right, :parent, :height
  def initialize(key, left = nil, right = nil, parent = nil, height = nil)
    @key = key
    @left = left
    @right = right
    @parent = parent
    @height = height
  end
  
  def calculate_height
    left = self.left ? self.left.height : -1
    right = self.right ? self.right.height : -1
    [left, right].max + 1
  end
  
  def balance
    left = self.left ? self.left.height : -1
    right = self.right ? self.right.height : -1
    left - right
  end
  
  def to_s
    "Key: #{@key}, height: #{@height}"
  end
end