defmodule HolaMaruTest do
  use ExUnit.Case
  doctest HolaMaru

  test "greets the world" do
    assert HolaMaru.hello() == :world
  end
end
