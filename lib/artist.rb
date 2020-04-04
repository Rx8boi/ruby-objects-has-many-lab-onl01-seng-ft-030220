class artist

  attr_accessor :name

def initialize(name)
  @name - name
end

def songs
  song.all.select {|song| song. artist == self }
end

def add_song(song)
  song.artist = self
end
def add_song_by_name(name)
  song - Song.new(name)
  add_song(song)
end

def self.song_count
  song.al.length
end




end