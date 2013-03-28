class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
	respond_to :json, :html, :pdf

  # GET /entries
  def index
  	@entries = Entry.order('title').each
  	respond_to do |format|
    	format.json do
    		render json: @entries.as_json
    	end
    	format.html do
    		respond_with @entries
    	end
    	format.pdf do
    		pdf = ResumePdf.new(@entries)
    		send_data pdf.render, filename: "Brian_Petro_Resume_#{Time.now}",
    													type: "application/pdf",
    													disposition: "inline"
    	end
    end
  end

  # GET /entries/1
  def show
  end

  # GET /entries/new
  def new
  	if params[:unlock]
    	@entry = Entry.new
   	else
   		redirect_to root_path
   	end
  end

  # GET /entries/1/edit
  def edit
    if params[:unlock]

   	else
   		redirect_to root_path
   	end
  end

  # POST /entries
  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to root_path, notice: 'Entry was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      redirect_to root_path, notice: 'Entry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    redirect_to entries_url, notice: 'Entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entry_params
      params.require(:entry).permit(:title, :details, :entry_url, :tech)
    end
end
