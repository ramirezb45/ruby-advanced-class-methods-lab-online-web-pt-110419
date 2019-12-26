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