require_relative 'collection'

require_relative 'payment_type'

module Lightspeed
  class PaymentTypes < Lightspeed::Collection
    alias_method :archive, :destroy
  end
end

