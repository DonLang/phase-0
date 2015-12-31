# Virus Predictor

# I worked on this challenge [ with:Andrew Kim ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative asks file relative to the location of the file
#require goes through the Load_path to find the file

#
require_relative 'state_data'


class VirusPredictor

  def initialize(state_of_origin, population_density, population)
     # initializes bunch of inputs to instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
     # summarizes the number of deaths and speed of spread
     #call the two private methods in public space
    predicted_deaths
    speed_of_spread
  end

  private
    # methods for the coder's access only, not for the public to access outside the class.  Methods below this can be called within the class but not outside of it.

  def predicted_deaths
    # predicts the deaths of each state based on their population density
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread
  # The amount of time it takes for the virus to spread in each state
  #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, state_data|
  x= VirusPredictor.new(state_name,state_data[:population_density],state_data[:population])
  x.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first uses a string as the key and => to indicate the value. The second uses symbols as the key and puts the : at the end to indicate the next element is the value.
# What does require_relative do? How is it different from require?
#   require_relative allows you access to a file, and indicates where it's location is relative to where your file is (in this example state_data is in the same directory so is pretty easy to find).  require allows you to access a file, and searches for the file in your $LOAD_PATH.  Using this would require you to put the file you want to access into the directories searched in your $LOAD_PATH or to add the directories to the $LOAD_PATH.
# What are some ways to iterate through a hash?
# You can use .each, .map, you could build a for loup, a while loop, use built in methods, or many other ways.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They weren't really neccessary as parameters since they were available as instance variables.
# What concept did you most solidify in this challenge?
# My understanding of $LOAD_PATH, and refactoring to reduce methods isn't always the best policy.