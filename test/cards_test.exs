defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "contains Ace of Hearts" do
    deck = Cards.create_deck()

    assert Cards.contains?(deck, "Ace of Hearts") == true
  end
end
