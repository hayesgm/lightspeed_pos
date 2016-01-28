require_relative 'resource'

module Lightspeed
  class PaymentType < Lightspeed::Resource
    alias_method :archive, :destroy

    fields(
      paymentTypeID: :id,
      name: :string,
      requireCustomer: :boolean,
      archived: :boolean,
      internalReserved: :boolean,
      type: :string,
      refundAsPaymentTypeID: :integer,
      RefundAsPaymentType: :integer,
      RegisterCountAmounts: :integer,
      RegisterWithdraws: :integer,
      SalePayments: :hash,
    )

  end
end

