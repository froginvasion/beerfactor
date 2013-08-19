class BeerVarietiesController < ApplicationController
  # GET /beer_varieties
  # GET /beer_varieties.json
  def index
    @beer_varieties = BeerVariety.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beer_varieties }
    end
  end

  # GET /beer_varieties/1
  # GET /beer_varieties/1.json
  def show
    @beer_variety = BeerVariety.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beer_variety }
      format.js
    end
  end

  # GET /beer_varieties/new
  # GET /beer_varieties/new.json
  def new
    @beer_variety = BeerVariety.new
    @beer = Beer.find params[:beer_id]
    @kinds = Kind.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beer_variety }
    end
  end

  # GET /beer_varieties/1/edit
  def edit
    @beer_variety = BeerVariety.find(params[:id])
  end

  # POST /beer_varieties
  # POST /beer_varieties.json
  def create
    @beer_variety = BeerVariety.new(params[:beer_variety])
    @beer = Beer.find(params[:beer_id])
    @beer_variety.beer=(@beer)
    @kinds = Kind.all
    respond_to do |format|
      if @beer_variety.save
        format.html { redirect_to beer_path(@beer), notice: 'Beer variety was successfully created.' }
        format.json { render json: @beer_variety, status: :created, location: @beer_variety }
      else
        format.html { render :new }
        format.json { render json: @beer_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beer_varieties/1
  # PUT /beer_varieties/1.json
  def update
    @beer_variety = BeerVariety.find(params[:id])

    respond_to do |format|
      if @beer_variety.update_attributes(params[:beer_variety])
        format.html { redirect_to @beer_variety, notice: 'Beer variety was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beer_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_varieties/1
  # DELETE /beer_varieties/1.json
  def destroy
    @beer_variety = BeerVariety.find(params[:id])
    @beer_variety.destroy

    respond_to do |format|
      format.html { redirect_to beer_varieties_url }
      format.json { head :no_content }
    end
  end
end
