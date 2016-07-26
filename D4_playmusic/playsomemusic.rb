require './artist'
require './song'
require './jukebox'

#create some songs
bob_marley = Artist.new("Bob Marley")
oasis = Artist.new("Oasis")
rolling_stones = Artist.new("The Rolling Stones")

play_list = []
play_list << Song.new(
    "Redemption Song",
    bob_marley,
    "Old pirates, yes, they rob I,
    Sold I to the merchant ships,
    Minutes after they took I
    From the bottomless pit..."
    )
play_list << Song.new(
    "Wonderwall",
    oasis,
    "Today is gonna be the day
    That they're gonna throw it back to you
    By now you should've somehow
    Realized what you gotta do
    I don't believe that anybody
    Feels the way I do about you now..."
    )
play_list << Song.new(
    "You Can’t Always Get What You Want",
    rolling_stones,
    "Well, I saw her today at the reception
    A glass of wine in her hand
    I knew she would go meet her connection
    At her feet was her footloose man

    No, you can't always get what you want
    aaaahhwaw")

#add them to the jukebox
box = Jukebox.new(play_list)

#play the song in the jukebox
# - Show the artis name and title of the song
# - show the song text
box.play
