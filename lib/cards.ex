defmodule Cards do
  def hello do
    :world
  end

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end

    # {hand , rest_deck} = cards.deal(deck , hand_size)
  end

  def shuffle_deck(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  # save our deck into a file system
  def save(deck, filename) do
    # Casting deck into binary object
    binary = :erlang.term_to_binary(deck)

    # Saving binary into a file called filename
    File.write(filename, binary)
  end

  # load our deck from the file system
  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "Something wrong happens ! "
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle_deck()
    |> Cards.deal(hand_size)
  end
end
