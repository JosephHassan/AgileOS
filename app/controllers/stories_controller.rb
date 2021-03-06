class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  include Session_helper
  
  #@tasks = Story.tasks.all
  
  # GET /stories
  # GET /stories.json
  def index
    clear_session_from_ids
    
    #get 5 records per page
    @stories = Story.order("title").page(params[:page]).per(5)
    
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    clear_session_from_ids
    @tasks = @story.tasks.all
    session[:story_id] = @story.id
  end

  # GET /stories/new
  def new
    @story = Story.new
    @story.epic_id = session[:epic_id] if session[:epic_id] != nil
    @story.product_id = session[:product_id] if session[:product_id] != nil
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render action: 'show', status: :created, location: @story }
      else
        format.html { render action: 'new' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:title, :description, :status, :user_id, :estimate, :epic_id, :product_id, :sprint_id)
    end
    


end
