Deface::Override.new(:virtual_path  => "spree/shared/_products",
                     :insert_before => "#products[data-hook]",
                     :partial       => "spree/shared/sorting_links",
                     :name          => "sorting_links_in_products")