# Ruby program to multiply two numbers 
# using the plus (+) operator

cnt=0
mul=0
num1=0
num2=0

print "Enter number1: ";
num1 = gets.chomp.to_i;  

print "Enter number2: ";
num2 = gets.chomp.to_i;  

while(cnt<num2)
    mul += num1;
    cnt = cnt+1;
end
        
print "Multiplication is: ",mul;

#Enter number1: 10
#Enter number2: 20
#Multiplication is: 200