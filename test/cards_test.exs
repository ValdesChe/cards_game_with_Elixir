defmodule CardsTest do
  use ExUnit.Case
  # This line helps to run DOCTEST so every example in documentation with be
  # run as a test
  doctest Cards

  test "contains Ace of Hearts" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Ace of Hearts") == true
  end

  test "create_deck makes 24 cards" do
    assert Cards.create_deck() |> Enum.count() == 24
  end

  # This test is not fair sure because there is a probability to have the shuffle deck in the same order as the original deck
  test "does shuffle_deck really shuffle the deck __assert_version" do
    deck = Cards.create_deck()
    assert deck != Cards.shuffle_deck(deck)
  end

  test "does shuffle_deck really shuffle the deck __refute_version" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle_deck(deck)
  end
end
