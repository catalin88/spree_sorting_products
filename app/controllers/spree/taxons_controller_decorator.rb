# Sorting based off: http://berk.es/2015/05/09/add-sorting-to-your-product-page-in-spree/
# Taxon specific code from: https://gist.github.com/Whelton/42cf3536903a95c04ac8

module Spree
  TaxonsController.class_eval do
    include SortingParams

    alias_method :old_show, :show

    def show
      old_show # Like calling super: http://stackoverflow.com/a/13806783/73673
      # Remove default `:in_taxon` `ORDER_BY` & apply sorting scope
      @products = @products.select('spree_products.*, spree_prices.amount').reorder('').send(sorting_scope)
    end
  end
end
