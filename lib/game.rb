require_relative 'human'
require_relative 'computer'

class Game

  attr_reader :winner

  def initialize
    @winner = { rock: [:scissors, :lizard],
               scissors: [:paper, :lizard],
               paper: [:rock, :spock],
               spock: [:rock, :scissors],
               lizard: [:spock, :paper] }
  end

  def winner?(human, computer)

    winner[human.hand].include?(computer.hand)

  end

  def loser?(human, computer)

    winner[human.hand].include?(computer.hand) == false

  end

  def draw?(human, computer)
    human.hand == computer.hand
  end

end
