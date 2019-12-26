class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

song = Song.create
Song.all.include?(song)

song = Song.new_by_name("The Middle")

song.name

song = Song.create_by_name("The Middle")

Song.find_by_name("The Middle")

song_1 = Song.find_or_create_by_name("Blank Space")
song_2 = Song.find_or_create_by_name("Blank Space")

song_1 == song_2
