# I/O 1
# Get the parts of speech
print "Please enter a past-tense verb: "
verb = gets.chomp
print "Please enter a noun: "
noun = gets.chomp
print "Please enter a proper noun: "
prop_noun = gets.chomp
print "Please enter a an adverb: "
adv = gets.chomp

# Make the sentence.
print "#{prop_noun} got a #{noun} and\n#{verb} #{adv} around the block.\n"

# Jean got a pet and
# got slowly around the block.

# I/O 2
print "Triangle height: "
h = gets.to_f;
print "Triangle width: "
w = gets.to_f;
area = 0.5*h*w
print "Triangle height ", h, " width ", w, " has area ", area, "\n"

#10
#20
#Triangle height 10.0 width 20.0 has area 100.0
