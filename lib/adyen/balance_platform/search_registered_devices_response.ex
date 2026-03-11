defmodule Adyen.BalancePlatform.SearchRegisteredDevicesResponse do
  @moduledoc """
  Provides struct and type for a SearchRegisteredDevicesResponse
  """

  @type t :: %__MODULE__{
          data: [Adyen.BalancePlatform.Device.t()] | nil,
          itemsTotal: integer | nil,
          link: Adyen.BalancePlatform.Link.t() | nil,
          pagesTotal: integer | nil
        }

  defstruct [:data, :itemsTotal, :link, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [{Adyen.BalancePlatform.Device, :t}],
      itemsTotal: {:integer, "int32"},
      link: {Adyen.BalancePlatform.Link, :t},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
