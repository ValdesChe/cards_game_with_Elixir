defmodule Cards do

  def hello do
    :world
  end

  def create_deck do
    values = ["Ace", "Two", "Three" , "Four", "Five" , "Six"]
    suits = ["Spades", "Clubs", "Hearts" , "Diamonds"]

    cards = for value <- values , suit <- suits do
        "#{value} of #{suit}"
    end

        # {hand , rest_deck} = cards.deal(deck , hand_size)

  end

  def shuffle_deck(deck) do
    Enum.shuffle(deck)
  end


  def contains?(deck , card) do
    Enum.member?(deck,card)
  end

  def deal(deck , hand_size) do
    Enum.split(deck,hand_size)
  end



end
