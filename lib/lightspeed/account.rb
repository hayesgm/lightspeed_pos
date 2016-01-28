require 'uri'
require_relative 'categories'
require_relative 'employees'
require_relative 'items'
require_relative 'item_matrices'
require_relative 'item_attribute_sets'
require_relative 'images'
require_relative 'inventories'
require_relative 'orders'
require_relative 'payment_types'
require_relative 'sales'
require_relative 'shops'
require_relative 'vendors'

module Lightspeed
  class Account < Lightspeed::Resource
    fields(
      accountID: :id,
      name: :string,
      link: :hash
    )
    relationships(
      :Categories,
      :Employees,
      :Images,
      :Inventories,
      :ItemMatrices,
      :ItemAttributeSets,
      :Items,
      :Orders,
      :PaymentTypes,
      :Sales,
      :Shops,
      :Vendors
    )

    def account
      self
    end

    def link
      if @link.is_a?(Hash)
        @link['@attributes']['href']
      else
        @link
      end
    end
  end
end
