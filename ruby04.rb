# Hashes
z = { 'mike' => 75, 'bill' => 18, 'alice' => 32 }
z['joe'] = 44
print z['bill'], " ", z['joe'], " ", z["smith"], "\n"
print z.has_key?('mike'), " ", z.has_key?("jones"), "\n"

a = 10
b = a +
        10
c = [ 5, 4, 
        10 ]
d = [ a ] \
        + c
print "#{a} #{b} [", c.join(" "), "] [", d.join(" "), "]\n";
