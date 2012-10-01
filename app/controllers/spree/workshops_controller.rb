class Spree::WorkshopsController < Spree::BaseController

  def update_town_select
    towns = Spree::Town.where(:province_id => params[:id]).order(:name) unless params[:id].blank?
    render :partial => "towns", :locals => { :towns => towns}
  end

end
