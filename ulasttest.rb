#require("ulast")
require "./ulast.rb"

# Here is a linked list class.  Since there's not much point in writing
# such a class when you already have all the Ruby data structures
# available, you might have figured out it's here to demonstrate something:
# including a module.

# [1]
# A linked list
class List
  # Nodes for the linked list.
  class Node
    # Get the last facility which scans to the end of the list.
    include Follower

    def initialize(d, n = nil)
      @val = d
      @next = n
    end
    attr_reader :next, :val
    attr_writer :next
  end

  # Get the printing facility.
  include Printer

  # Create the list with its first node.
  def initialize(first)
    @head = Node.new(first)
  end

  # Add at the front.  We can only add, and the list is created with one
  # node, so no special case for empty list.  How nice.
  def at_front(v)
    n = Node.new(v)
    n.next = @head
    @head = n
  end

  # Add to the end of the list.
  def at_end(v)
    n = Node.new(v)
    @head.last.next = n
  end

  # Process each member of the list.  The yield operator calls the block
  # sent to the function.
  def each
    p = @head
    while p != nil
      yield p.val
      p = p.next
    end
  end
end

# [2]
# A BST class.  Again, the purpose is a demo, not because you need one when
# you already have the Ruby datatypes.

class Tree
    class Node
      # Again, we include the follower class.
      include Follower
  
      def initialize(d)
        @val = d
        @lft, @rgt = nil
      end
      attr_reader :lft, :rgt, :val
      attr_writer :lft, :rgt
  
      # Our next function just moves right.  (See below)
      def next
        return @rgt
      end
  
      # Insert a new node into the subtree rooted here.
      def insert(new)
        if new.val < @val then
          if @lft == nil then
            @lft = new
          else
            @lft.insert(new)
          end
        else
          if @rgt == nil then
            @rgt = new
          else
            @rgt.insert(new)
          end
        end
      end
  
      # This runs for each value in the tree in sorted order.  The block
      # parameter is an object known as a closure.  They contain executable 
      # code, and blocks can become closures (see below).
      def each(block)
        if @lft then @lft.each(block) end
        block.call(@val)
        if @rgt then @rgt.each(block) end
      end
    end
  
    # Get the printing facility.
    include Printer
  
    def initialize(first)
      @root = Node.new(first)
    end
  
    # Insert a value.  Most of the work in Node#insert
    def insert(v)
      @root.insert(Node.new(v))
    end
  
    # Stepping right from the root until nil gives the max value in the tree.
    def max
      return @root.last.val
    end
  
    # The &blk notation converts the block used in the iterator into a
    # closure object, which we send to Node#each.
    def each(&blk)
      @root.each(blk)
    end
  end

# [3]
print "=== List test ===\n"
x = List.new(10)
x.at_front(33)
x.at_front(28)
x.at_end(12)
x.at_front(3)
x.at_end(71)

x.pr(true)

s = 0
x.each { |n| s += n }
print "sum = ", s, "\n"

print "\n=== Tree test ===\n"
t = Tree.new(28)
t.insert(38)
t.insert(1)
t.insert(39)
t.insert(17)
t.insert(22)
t.insert(8)
t.insert(11)

t.pr(true)

s = 0
t.each { |n| s += n }
print "sum = ", s, "\n"

print "Max is ", t.max, "\n"

