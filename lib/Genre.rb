<<<<<<< HEAD
class Genre
  extend Concerns::Findable
  
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end

  def save
    @@all << self
  end

  def artists
    self.songs.collect { | song | song.artist }.uniq
  end
  
=======
class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(genre)
    genre = Genre.new(genre)
    genre.save
    genre
  end
  
  def save
    @@all << self
  end
  
  def artists
    self.songs.collect {|song| song.artist}.uniq
  end
  
>>>>>>> b400d59bc7829ca6b18a6083eee8f5dd627bed73
end