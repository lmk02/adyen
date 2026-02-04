defmodule Adyen.Checkout.ThreeDSRequestData do
  @moduledoc """
  Provides struct and type for a ThreeDSRequestData
  """

  @type t :: %__MODULE__{
          challengeWindowSize: String.t() | nil,
          dataOnly: String.t() | nil,
          nativeThreeDS: String.t() | nil,
          threeDSVersion: String.t() | nil
        }

  defstruct [:challengeWindowSize, :dataOnly, :nativeThreeDS, :threeDSVersion]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      challengeWindowSize: {:enum, ["01", "02", "03", "04", "05"]},
      dataOnly: {:enum, ["false", "true"]},
      nativeThreeDS: {:enum, ["preferred", "disabled"]},
      threeDSVersion: {:enum, ["2.1.0", "2.2.0"]}
    ]
  end
end
