# Methods
# Square the number
def sqr(x)
    return x*x
end

# See how it works.
(rand(4) + 2).times {
    a = rand(300)
    print a,"^2 = ", sqr(a), "\n"
}
print "\n"

# Don't need a parm.
def boom
    print "Boom!\n"
end
boom
boom

# Default parms
print "\n"
def line(cnt, ender = "+", fill = "-")
    print ender, fill * cnt, ender, "\n"
end
line(8)
line(5,'*')
line(11,'+','=')

# Do they change?
def incr(n)
    n = n + 1
end
a = 5
incr(a)
print a,"\n"

# Place the array in a random order.  Floyd's alg.
def shuffle(arr)
    for n in 0...arr.size
        targ = n + rand(arr.size - n)
        arr[n], arr[targ] = arr[targ], arr[n] if n != targ
    end
end

# Make strange declarations.
def pairs(a, b)
    a << 'Insane'
    shuffle(b)
    b.each { |x| shuffle(a); a.each { |y| print y, " ", x, ".\n" } }
end
first = ['Strange', 'Fresh', 'Alarming']
pairs(first, ['lemonade', 'procedure', 'sounds', 'throughway'])
print "\n", first.join(" "), "\n"

# Add the strings before and after around each parm and print
def surround(before, after, *items)
    items.each { |x| print before, x, after, "\n" }
end

surround('[', ']', 'this', 'that', 'the other')
print "\n"

surround('<', '>', 'Snakes', 'Turtles', 'Snails', 'Salamanders', 'Slugs',
        'Newts')
print "\n"

def boffo(a, b, c, d)
    print "a = #{a} b = #{b}, c = #{c}, d = #{d}\n"
end

# Use * to adapt between arrays and arguments
a1 = ['snack', 'fast', 'junk', 'pizza']
a2 = [4, 9]
boffo(*a1)
boffo(17, 3, *a2)