defmodule Adyen.BalancePlatform.SearchRegisteredDevicesResponse do
  @moduledoc """
  Provides struct and type for a SearchRegisteredDevicesResponse
  """

  alias Adyen.BalancePlatform.Device
  alias Adyen.BalancePlatform.Link

  @type t :: %__MODULE__{
          data: [Device.t()] | nil,
          itemsTotal: integer | nil,
          link: Link.t() | nil,
          pagesTotal: integer | nil
        }

  defstruct [:data, :itemsTotal, :link, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [{Device, :t}],
      itemsTotal: {:integer, "int32"},
      link: {Link, :t},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
