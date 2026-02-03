defmodule AdyenTest do
  use ExUnit.Case

  doctest Adyen

  test "greets the world" do
    assert Adyen.hello() == :world
  end
end
