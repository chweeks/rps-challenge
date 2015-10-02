require_relative 'player'

class Human < Player

  def chooses(choice)
    @hand = choice
    fail 'Invalid Choice' unless options.include?(choice)
  end
end
