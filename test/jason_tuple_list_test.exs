defmodule JasonTupleListTest do
  use ExUnit.Case

  test "simple example" do
    tl = JasonTupleList.new( [ { "fooBag", 19 }, { "barfBag", 33 } ] )
    assert Jason.encode!( tl ) == ~S|{"fooBag":19,"barfBag":33}|
  end
end
