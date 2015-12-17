# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map {|inner| inner += 5}
  else
    element += 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map do |inner|
      if inner.kind_of?(Array)
        inner.map {|innermost|  "#{innermost}ly"}
      else
        "#{inner}ly"
      end
    end
  else
    "#{element}ly"
  end
end

p startup_names.e

# Refactor:
#Couldn't really find any way to do it easier without flattening, and then we got lost trying to unflatten.
# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.flatten!.map! {|e| "#{e}ly"}

# p startup_names
# What are some general rules you can apply to nested arrays?
#They can be a bit confusing, when accessing values you go from outermost level inward, and you will want to be careful when iterating through them.
# What are some ways you can iterate over nested arrays?
#You can access the internal elements as arrays, or with a little work you can access them directly.  It'll be nice to learn those methods (like puts) that have "Ruby magic" and address all elements easily.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I re-used map!, and that seemed to work well for our needs.  We wanted a destructive method, and .each wasn't.