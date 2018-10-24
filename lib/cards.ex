defmodule Cards do
  @moduledoc """
    Documentation: Providing methods for creating and handling a deck of cards
  """

  @doc """
    Return a list of strings representing a deck of playing cards
  """
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

  @doc """
    Divide a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many card should be in the hand

  ## Examples
      iex> deck = Cards.create_deck
      iex> {hand , deck} =  Cards.deal(deck,1)
      iex> hand
      ["Ace of Spades"]

  """
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
