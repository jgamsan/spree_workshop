module Spree
  class WorkshopsController < BaseController

    def create
      @workshop = Spree::Workshop.new(params[:workshop])

      if @workshop.save
        redirect_to('/', :notice => t('spree.contact_us.notices.success'))
      else
        render :new
      end
    end

  def new
    @workshop = Spree::Workshop.new
  end

    def update_town_select
      towns = Spree::Town.where(:state_id => params[:id]).order(:name) unless params[:id].blank?
      render :partial => "towns", :locals => { :towns => towns}
    end

  end
end
