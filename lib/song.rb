class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    # @name = name 
    new_song = Song.new 
    @@all << self 
    new_song
  end
  
  def self.new_by_name(name)
    new_song = Song.new 
    new_song.name = name 
    new_song
  end
  
  def self.create_by_name(name)
    new_song = Song.new 
    new_song.name = name 
    @@all << new_song 
    new_song
  end
  
  def self.find_by_name(name)
    self.all.select { |song| song.name == name }.first 
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil 
      self.create_by_name(name)
    else
      return self.find_by_name(name)
    end
  end
  
  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end
  
  def self.new_from_filename

end
