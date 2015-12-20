class Cat
  def initialize(name,color,temper)
    @name = name
    @color = color
    @temper = temper
    @claws = true
  end
  def scratch
    if @temper == "yes" && @claws == true
      puts "Outch"
    else
      puts "Good kitty"
    end
  end
end

Scratchy=Cat.new("Scratchy","Black","yes")
Scratchy.scratch