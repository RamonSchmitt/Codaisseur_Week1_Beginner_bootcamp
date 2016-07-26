class Jukebox
  attr_reader :play_list

  def initialize(play_list)
    @play_list = play_list
  end

  def play
    @play_list.each do |song|
      song.play
    end
  end

end
