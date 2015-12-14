#Pseudocode
#Input: A list of names of people to put into accountablility groups
#Output: A list of groups made of the names that are between 3-5 people (ideally 4-5)
#The steps
#Define a method acct_groups that takes a list of names as a parameter
#If the input is less than 3 then say can't make a group.
#Figure out if the list of names is divisible by 5
#If it isn't then add a number of nil values to make it equal to 5.
#Randomize the list.
#Break it into groups of 5 that contain 2 or less nil values
#Rinse and repeat until you have your groups.
#return the output of a list of the people in groups
#initial solution
# def acct_groups(people)
#   group_number = people.length/5
#   extra = people.length%5
#   if extra > 0
#     (5-extra).times do |filler|
#       people = people << ""
#     end
#     group_number += 1
#   end
#   randomized_list = people.shuffle
#   groups = Hash.new
#   group_number.times do |times|
#     accountability_group = times + 1
#     member = Array.new
#     5.times do |counter|
#       member << randomized_list[0]
#       randomized_list.shift
#rare edge case of three ("")'s in small groups so had to redo
#       if member.include?("") && randomized_list[0]==""
#        randomized_list.shuffle!
#       end
#     end
#     groups[accountability_group] = member
#   end
# return groups
# end
#Refactor

def acct_groups(people)
  length = people.length
  group_number = length/5
  extra = length%5
  randomized_list = people
  if extra > 0
  randomized_list.fill("",length..(length+5-extra))
    group_number += 1
  end

  groups  = Hash.new {|h,k| h[k]=[]}
  5.times do |filler|
    group_number.times do |iterate|
      accountability_group ="group " + (iterate + 1).to_s
      if randomized_list[0] != ""
        groups[accountability_group] <<randomized_list[0]
      end
      randomized_list.shift
    end
  end
  p groups
end
#Test cases



# acct_groups(["player 1", "player 2", "player 3", "player 4","player 5", "player 6"])
# acct_groups(["player 1", "player 2", "player 3", "player 4","player 5", "player 6","player 7", "player 8", "player 9", "player 10","player 11", "player 12", "player 13", "player 14","player 15", "player 16","player 17", "player 18"])

# What was the most interesting and most difficult part of this challenge?
#Deciding to stop was the hardest I wanted to add all of the complexity challenges, but didn't feel I had the time to do them justice.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#Slowly but surely.  My initial Pseudocode as written made the problem more complex than my final solution, so I still have some work identifying steps.
# Was your approach for automating this task a good solution? What could have made it even better?
#Determining when to randomize the list was the first problem I had, and was a poor solution.  In the future I would like to try adding complexity after I develop my initial solution.
# What data structure did you decide to store the accountability groups in and why?
#Hash it allowed me to easily iterate through the groups, and assign as necessary.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#I learned that my inital solution worked poorly in small groups, and totally reworked it for efficency. I also learned that initalizing a hash with {|h,k| h[k]=[]} allows you to immediately add to your array inside a hash which was quite useful.