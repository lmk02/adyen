defmodule Adyen.StructureTest do
  use ExUnit.Case

  alias Adyen.Account.V6.Accounts

  test "modules are generated on the fly" do
    assert Code.ensure_loaded?(Accounts)
  end

  test "generated modules contain correct functions" do
    assert function_exported?(Accounts, :post_close_account, 2)
  end
end
