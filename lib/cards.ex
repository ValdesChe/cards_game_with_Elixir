defmodule Cards do

  def hello do
    :world
  end

  def create_deck do
    ["Ace", "Two", "Three" , "Four", "Five" , "Six"]
  end

  def shuffle_deck(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck , card) do
    Enum.member?(deck,card)
  end



end
