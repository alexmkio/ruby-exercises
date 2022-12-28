class Children
  def initialize
    @children = []
  end

  def <<(child)
    @children << child
  end

  def eldest
    if @children.length > 0
      @children.max_by {|child| child.age}
    else
      nil
    end
  end
end