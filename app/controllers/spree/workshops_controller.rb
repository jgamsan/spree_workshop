module Spree
  class WorkshopsController < BaseController
    layout "contenido"
    def index
      @states = Spree::State.where(:country_id => 188)
      @workshops = Spree::Workshop.all_states.order(:name).page params[:page]
      respond_to do |format|
        format.html
        format.js
      end
    end

    def search
      if params[:Provincia] == "0"
        @workshops = Spree::Workshop.all_states.order(:name).page params[:page]
      else
        @workshops = Spree::Workshop.by_state(params[:Provincia]).order(:name).page params[:page]
      end

      respond_to do |format|
        format.html
        format.js
      end
    end

    def create
      @workshop = Spree::Workshop.new(params[:workshop])

      if @workshop.save
        redirect_to('/', :notice => t('spree.workshop.notices.success'))
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
