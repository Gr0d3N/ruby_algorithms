# Question: design a blackjack game

Suits = ["Clubs", "Hearts", "Spades", "Daimonds"]
Ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
$d = []

class Card
  @@suit_value = Hash.new()
  @@rank_value = Hash.new()

  Suits.length.times do |i|
    @@suit_value[i] = Suits[i]
  end

  Ranks.length.times do |i|
    @@rank_value[i] = Ranks[i]
  end

  attr_reader :rank, :suit
  attr_accessor :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    value = case @rank
            when "Ace"
              11
            when "2", "3", "4", "5", "6", "7", "8", "9", "10"
              @rank.to_i
            when "J", "Q", "K"
              10
            else
              nil
            end
  end

  def to_s
    "#{@rank} of #{@suir}, value #{value}"
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Suits.each do |suit|
      Ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end
  
  def remaining
    @cards.length
  end
end

class Player
  attr_accessor :hand, :hand_value

  def initialize
    @hand = []
    @hand_value = 0
  end

  def push_card(card)
    @hand << card
  end
end
    
