# I worked on this challenge [by myself, with: ].


# Your Solution Below

#Define method to determine if 3 numbers can form a triangle
#Input is 3 numbers
#The sum of any 2 sides are is greater than the 3rd then it can form a triangle
#Add a+b; b + c; a + c
#Output is true or false can for a triangle

def valid_triangle?(a, b, c)
  a + b > c && b + c > a && c + a > b
end
