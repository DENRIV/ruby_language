#comment on Ruby
print "Hello, World!\n"

=begin
comment lines
p(x) = x^4 + 2x^3 + 5x^2 + 6x + 7
p(4) = 495
=end

# Variables and expressions.
a = 10
b = 3 * a + 2
printf("%d %d\n", a, b);

# Type is dynamic.
b = "A string"
c = 'Another String'
print b + " and " + c + "\n"

# Operators are really method invocations.
a = 10
b = 3.*(a).+(2)
Kernel::printf("%d %d\n", a, b);

# Objects
# Type is still dynamic.
b = String.new("A string")
c = 'Another String'
Kernel.print(b.+(" and ")::+(c).+("\n"))