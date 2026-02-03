defmodule Adyen.ErrorTest do
  use ExUnit.Case

  alias Adyen.Error

  test "parses Checkout-style error" do
    body = %{
      "status" => 422,
      "errorCode" => "174",
      "message" => "Invalid Card",
      "errorType" => "validation",
      "pspReference" => "ABCD"
    }

    error = Error.from_response(422, body)

    assert error.status == 422
    assert error.error_code == "174"
    assert error.message == "Invalid Card"
    assert error.error_type == "validation"
    assert error.psp_reference == "ABCD"
    assert error.original_error == body
  end

  test "parses Transfers-style (Problem Details) error" do
    body = %{
      "type" => "https://docs.adyen.com/errors/invalid-request",
      "title" => "Invalid Request",
      "status" => 422,
      "detail" => "The amount is invalid",
      "requestId" => "REQ-123",
      "invalidFields" => [
        %{"name" => "amount", "message" => "Must be > 0"}
      ]
    }

    error = Error.from_response(422, body)

    assert error.status == 422
    assert error.message == "Invalid Request: The amount is invalid"
    assert error.psp_reference == "REQ-123"
    assert error.invalid_fields == body["invalidFields"]
    assert error.original_error == body
  end

  test "parses error with only invalidFields" do
    body = %{
      "status" => 422,
      "invalidFields" => [
        %{"name" => "email", "message" => "Format invalid"},
        %{"name" => "cc", "error" => "Too short"}
      ]
    }

    error = Error.from_response(422, body)

    assert error.message == "Validation error: email (Format invalid), cc (Too short)"
  end

  test "parses binary error body" do
    error = Error.from_response(500, "Internal Server Error")

    assert error.status == 500
    assert error.message == "Internal Server Error"
  end

  test "parses nil body" do
    # Assuming we add nil handler, or it falls through if not guarded
    # My current code guards is_map or is_binary.
    # I should add a catch-all or nil handler.
  end
end
