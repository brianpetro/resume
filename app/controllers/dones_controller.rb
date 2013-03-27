class DonesController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:create]
  before_action :set_done, only: [:show, :edit, :update, :destroy]
	respond_to :json, :html

  # GET /to_dones
  # GET /to_dones.json
  def index
  	@todones = Done.order("created_at DESC").each
    respond_to do |format|
    	format.html do
    		respond_with @todones
    	end
    	format.json do
    		render json: @todones.as_json
    	end
    end
  end

  # GET /to_dones/1
  # GET /to_dones/1.json
  def show
  end

  # GET /dones/new
  def new
    @done = Done.new
  end

  # GET /dones/1/edit
  def edit
  end

  # POST /dones
  # POST /dones.json
  def create
    @done = Done.new(done_params)

    respond_to do |format|
      if @done.save
        format.html { redirect_to @done, notice: 'Done was successfully created.' }
        format.json { render action: 'show', status: :created, location: @done }
      else
        format.html { render action: 'new' }
        format.json { render json: @done.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dones/1
  # PATCH/PUT /dones/1.json
  def update
    respond_to do |format|
      if @done.update(done_params)
        format.html { redirect_to @done, notice: 'Done was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @done.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dones/1
  # DELETE /dones/1.json
  def destroy
    @done.destroy
    respond_to do |format|
      format.html { redirect_to dones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_done
      @done = Done.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def done_params
      params.require(:done).permit(:gist)
    end
end
