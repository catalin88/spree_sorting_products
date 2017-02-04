module SortingParams
  extend ActiveSupport::Concern

  included do
    helper_method :sorting_param
  end

  def sorting_param
    params[:sorting].try(:to_sym) || default_sorting
  end

  private

    def sorting_scope
      allowed_sortings.include?(sorting_param) ? sorting_param : default_sorting
    end

    def default_sorting
      :descend_by_updated_at
    end

    def allowed_sortings
      [:descend_by_master_price, :ascend_by_master_price, :descend_by_updated_at]
    end
end
