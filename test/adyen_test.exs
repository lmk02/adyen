defmodule AdyenTest do
  use ExUnit.Case

  doctest Adyen

  test "version returns the library version" do
    assert Adyen.version() == "0.1.0"
  end
end
