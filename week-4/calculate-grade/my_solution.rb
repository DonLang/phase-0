# Calculate a Grade

# I worked on this challenge [by  with: Everett Golden ].


# Your Solution Below
#Define a METHOD called get_grade that takes a grade parameter
def get_grade(grade)
  #check to see if the grade is an A
  if grade >=90
    return 'A'
    #check to see if the grade is a B
  elsif grade >=80
    return 'B'
    #check to see if the grade is a C
  elsif grade >=70
    return 'C'
    #check to see if the grade is a D
  elsif grade >=60
    return 'D'
    #check to see if the grade is a F
  else
    return 'F'
  end
end
