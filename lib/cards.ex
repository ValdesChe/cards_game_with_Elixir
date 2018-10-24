defmodule Cards do

  def hello do
    :world
  end

  def create_deck do
    values = ["Ace", "Two", "Three" , "Four", "Five" , "Six"]
    suits = ["Spades", "Clubs", "Hearts" , "Diamonds"]

    cards = for value <- values do
      for suit <- suits do
          "#{value} of #{suit}"
      end
    end

    List.flatten(cards)

  end

  def shuffle_deck(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck , card) do
    Enum.member?(deck,card)
  end



end
