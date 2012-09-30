class Spree::WorkshopsController < ApplicationController
  # GET /spree/workshops
  # GET /spree/workshops.json
  def index
    @spree_workshops = Spree::Workshop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spree_workshops }
    end
  end

  # GET /spree/workshops/1
  # GET /spree/workshops/1.json
  def show
    @spree_workshop = Spree::Workshop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spree_workshop }
    end
  end

  # GET /spree/workshops/new
  # GET /spree/workshops/new.json
  def new
    @spree_workshop = Spree::Workshop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spree_workshop }
    end
  end

  # GET /spree/workshops/1/edit
  def edit
    @spree_workshop = Spree::Workshop.find(params[:id])
  end

  # POST /spree/workshops
  # POST /spree/workshops.json
  def create
    @spree_workshop = Spree::Workshop.new(params[:spree_workshop])

    respond_to do |format|
      if @spree_workshop.save
        format.html { redirect_to @spree_workshop, notice: 'Workshop was successfully created.' }
        format.json { render json: @spree_workshop, status: :created, location: @spree_workshop }
      else
        format.html { render action: "new" }
        format.json { render json: @spree_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spree/workshops/1
  # PUT /spree/workshops/1.json
  def update
    @spree_workshop = Spree::Workshop.find(params[:id])

    respond_to do |format|
      if @spree_workshop.update_attributes(params[:spree_workshop])
        format.html { redirect_to @spree_workshop, notice: 'Workshop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spree_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spree/workshops/1
  # DELETE /spree/workshops/1.json
  def destroy
    @spree_workshop = Spree::Workshop.find(params[:id])
    @spree_workshop.destroy

    respond_to do |format|
      format.html { redirect_to spree_workshops_url }
      format.json { head :no_content }
    end
  end
end
