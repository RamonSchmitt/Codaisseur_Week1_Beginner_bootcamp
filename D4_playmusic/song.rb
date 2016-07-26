class Song
  attr_reader :title, :artist, :text

  def initialize(title, artist, text)
    @title = title
    @artist = artist
    @text = text
  end

  def play
    puts @artist.name
    puts @title
    puts "\n"
    puts @text
    puts "\n \n"
  end
end
