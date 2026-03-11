defmodule Adyen.Management.ReceiptPrinting do
  @moduledoc """
  Provides struct and type for a ReceiptPrinting
  """

  @type t :: %__MODULE__{
          merchantApproved: boolean | nil,
          merchantCancelled: boolean | nil,
          merchantCaptureApproved: boolean | nil,
          merchantCaptureRefused: boolean | nil,
          merchantRefundApproved: boolean | nil,
          merchantRefundRefused: boolean | nil,
          merchantRefused: boolean | nil,
          merchantVoid: boolean | nil,
          shopperApproved: boolean | nil,
          shopperCancelled: boolean | nil,
          shopperCaptureApproved: boolean | nil,
          shopperCaptureRefused: boolean | nil,
          shopperRefundApproved: boolean | nil,
          shopperRefundRefused: boolean | nil,
          shopperRefused: boolean | nil,
          shopperVoid: boolean | nil
        }

  defstruct [
    :merchantApproved,
    :merchantCancelled,
    :merchantCaptureApproved,
    :merchantCaptureRefused,
    :merchantRefundApproved,
    :merchantRefundRefused,
    :merchantRefused,
    :merchantVoid,
    :shopperApproved,
    :shopperCancelled,
    :shopperCaptureApproved,
    :shopperCaptureRefused,
    :shopperRefundApproved,
    :shopperRefundRefused,
    :shopperRefused,
    :shopperVoid
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantApproved: :boolean,
      merchantCancelled: :boolean,
      merchantCaptureApproved: :boolean,
      merchantCaptureRefused: :boolean,
      merchantRefundApproved: :boolean,
      merchantRefundRefused: :boolean,
      merchantRefused: :boolean,
      merchantVoid: :boolean,
      shopperApproved: :boolean,
      shopperCancelled: :boolean,
      shopperCaptureApproved: :boolean,
      shopperCaptureRefused: :boolean,
      shopperRefundApproved: :boolean,
      shopperRefundRefused: :boolean,
      shopperRefused: :boolean,
      shopperVoid: :boolean
    ]
  end
end
