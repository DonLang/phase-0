# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
=begin

initialize Song class
initialize Song class to receive two variables
make separate class Playlist that takes a variable number of parameters
Make a method add that takes a number of songs and adds them to the playlist
define a method called num_of_tracks that shows the number of songs in the playlist
define a method that runs the file attached to the song (modeled)
define a method that removes a song and artist from the playlist
define a method that checks to see if the song is in the playlist and returns true or false
define a methat that plays all the songs in the playlist

=end


# Initial Solution
# class Song

#   def initialize(title, artist)
#     @title = title
#     @artist = artist
#   end

#    def play
#      puts @title
#     sleep(0.5)
#   end
# end

# class Playlist
#   def initialize(*songs)
#     @playlist=Array.new
#     songs.each{|song| @playlist = @playlist.push(song) }
#   end

#   def add(*song)
#     @playlist.concat(song)
#   end

#   def num_of_tracks
#     return @playlist.length
#   end

#   def remove(title)
#     @playlist.delete(title)
#   end

#   def includes?(title)
#     @playlist.include?(title)
#   end

#   def play_all
#     @playlist.each do |x|
#       x.play
#     end
#   end
# end


# Refactored Solution

class Song

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

   def play
     puts @title
    sleep(0.5)
  end
end

class Playlist
  def initialize(*songs)
    @playlist=Array.new.concat(songs)

  end

  def add(*song)
    @playlist.concat(song)
  end

  def num_of_tracks
    return @playlist.length
  end

  def remove(title)
    @playlist.delete(title)
  end

  def includes?(title)
    @playlist.include?(title)
  end

  def play_all
    @playlist.each { |x| x.play}
    end
  end
end




# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
# What concepts did you review in this challenge?
# I reviewed classes and how to modify them.
# What is still confusing to you about Ruby?
# Pseudocode is still a bit confusing, but quite a bit of ruby is pretty clear.
# What are you going to study to get more prepared for Phase 1?
# JavaScript, jQuery, and reviewing how they work with websites.
