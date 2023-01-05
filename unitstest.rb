# Unit Conversion

# command:
# ruby unitstest.rb

#
# This is a small program which uses the Units module to perform conversions
# requested by the user.

#require("units")
#require "./my.rb"
require "./units.rb"

print "break with 0\n"

print "You have: "
while from = gets

  from.chomp!

  print "You want: "
  to = gets.chomp

  begin
    result = Units.ratio(from.clone, to.clone)
    print from, " = ", result, " ", to, "\n"
  rescue Exception
    # Stupidly enough, Exception isn't the default; StandardError is, which is
    # a subclass of Exception.
    print "Failed: #{$!}\n"
  end

  # break while/loop
  break if from == "0"

  print "You have: "

end