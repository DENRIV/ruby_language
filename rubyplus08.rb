# fibonacci

print "fibonacci:\n"

# 1
def fibonacci( n )
    return  n  if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 
puts fibonacci( 10 )
# => 55

# 2
def fibonacci2(n)
    n <= 1 ? n :  fibonacci2( n - 1 ) + fibonacci2( n - 2 ) 
 end
 puts fibonacci2( 10 )
 # => 55

print "fibonacci sequence"

# 3
 def fib(n)
    n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
  end
  puts fib(10)

# 4
  fib = Hash.new {|hash, key| hash[key] = key < 2 ? key : hash[key-1] + hash[key-2] }

puts fib[100] # => 354224848179261915075 