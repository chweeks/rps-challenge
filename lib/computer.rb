require_relative 'player'

class Computer < Player

  def initialize
    @options = [:rock, :paper, :scissors, :lizard, :spock]
    @hand = options[rand(4)]
  end
end
