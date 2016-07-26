require './person'
require './beer'

class Bartender < Person
  def serve(person)
    if person.drunk?
      say "No more for you!"
      return
    end
    
    say "Here you go #{person.name}!"
    person.drinks << Beer.new
  end
end
