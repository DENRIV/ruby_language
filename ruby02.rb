# Strings
# Double-quoted strings can substitute variables.
a = 17
print "a = #{a}\n";
print 'a = #{a}\n';

print "\n";

# If you're verbose, you can create a multi-line string like this.
b = <<ENDER
This is a longer string,
perhaps some instructions or agreement
goes here.  By the way,
a = #{a}.
ENDER

print "\n[[[" + b + "]]]\n";

print "\nActually, any string
can span lines.  The line\nbreaks just become
part of the string.
"

print %Q=\nThe highly intuitive "%Q" prefix allows alternative delimiters.\n=
print %Q[Bracket symbols match their mates, not themselves.\n]


# String Operations
s = "Hi there.  How are you?"
print s.length, " [" + s + "]\n"

# Selecting a character in a string gives an integer ascii code.
print s[4], "\n"
printf("%c\n", s[4])

# The [n,l] substring gives the starting position and length.  The [n..m]
# form gives a range of positions, inclusive.
print "[" + s[4,4] + "] [" + s[6..15] + "]\n"

print "Fine " * 3, "\n"

print s.index("there"), " ", s.index("How"), " ", s.index("bogus"), "\n"

print s.reverse, "\n"