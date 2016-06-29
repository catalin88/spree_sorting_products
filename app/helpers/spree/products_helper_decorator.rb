module Spree
  ProductsHelper.module_eval do
    #... cache_key_for_products

    def current_sorting?(key)
      sorting_param == key.to_sym
    end
  end
end