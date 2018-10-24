defmodule CardsTest do
  use ExUnit.Case
  # This line helps to run DOCTEST so every example in documentation with be
  # run as a test
  doctest Cards

  test "contains Ace of Hearts" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Ace of Hearts") == true
  end
end
