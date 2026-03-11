defmodule Adyen.BalancePlatform.V2.SearchRegisteredDevicesResponse do
  @moduledoc """
  Provides struct and type for a SearchRegisteredDevicesResponse
  """

  @type t :: %__MODULE__{
          data: [Adyen.BalancePlatform.V2.Device.t()] | nil,
          itemsTotal: integer | nil,
          link: Adyen.BalancePlatform.V2.Link.t() | nil,
          pagesTotal: integer | nil
        }

  defstruct [:data, :itemsTotal, :link, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [{Adyen.BalancePlatform.V2.Device, :t}],
      itemsTotal: {:integer, "int32"},
      link: {Adyen.BalancePlatform.V2.Link, :t},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
