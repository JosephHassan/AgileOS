class ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:new]
  include Session_helper
  
  # GET /releases
  # GET /releases.json
  def index
    @releases = Release.order("title").page(params[:page]).per(5)
    
  end

  # GET /releases/1
  # GET /releases/1.json
  def show
    clear_session_from_ids
    @sprints = @release.sprints.order("title").page(params[:page]).per(5)
  end

  # GET /releases/new
  def new
    @release = Release.new
    @release.Product_id = session[:product_id]
  end

  # GET /releases/1/edit
  def edit
  end

  # POST /releases
  # POST /releases.json
  def create
    @release = Release.new(release_params)

    respond_to do |format|
      if @release.save
        format.html { redirect_to @release, notice: 'Release was successfully created.' }
        format.json { render action: 'show', status: :created, location: @release }
      else
        format.html { render action: 'new' }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /releases/1
  # PATCH/PUT /releases/1.json
  def update
    respond_to do |format|
      if @release.update(release_params)
        format.html { redirect_to @release, notice: 'Release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /releases/1
  # DELETE /releases/1.json
  def destroy
    @release.destroy
    respond_to do |format|
      format.html { redirect_to releases_url }
      format.json { head :no_content }
    end
  end

  private
  def set_product
     @product = Product.find_by(id: session[:product_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release
      @release = Release.find(params[:id])
      #@release.product_id = session[:product_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_params
      params.require(:release).permit(:title, :description, :target_release_date, :status, :Product_id)
    end
end
