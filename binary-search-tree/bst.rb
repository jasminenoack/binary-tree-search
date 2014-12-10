class Bst
  attr_reader :left, :right, :data

  def initialize(arg)
    @data=arg
  end

  def data
    @data
  end

  def insert(arg)
    if arg<=@data
      if @left
        @left.insert(arg)
      else
        @left=Bst.new(arg)
      end
    else
      if @right
        @right.insert(arg)
      else
        @right=Bst.new(arg)
      end
    end
  end

  def each(*args, &block)
    @left.each(&block) unless @left.nil?
    yield self.data if block
    @right.each(&block) unless @right.nil?
  end

end
