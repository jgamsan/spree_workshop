module Spree
  class WorkshopsController < BaseController

    def index
      @states = Spree::State.where(:country_id => 188)
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

  def update_workshop_list
    list_workshops = Spree::Workshop.by_state(params[:id]).order(:name) unless params[:id].blank?
    provincia = Spree::State.find(params[:id]).name
    if list_workshops.empty?
      message = "No existen talleres concertados en la Provincia de #{provincia}"
    else
      message = ""
    end
    render :partial => "list_workshops", :locals => { :list_workshops => list_workshops, :message => message}
  end

  end
end
