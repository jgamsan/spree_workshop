module Spree
  module Admin
    class WorkshopsController < ResourceController

      def index
        @workshops = Spree::Workshop.order("name").page(params[:page]).per(10)
      end

    end
  end
end 
