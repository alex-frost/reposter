class RepostUrlsController < ApplicationController
  before_action :set_repost_url, only: [:show, :edit, :update, :destroy]

  # GET /repost_urls
  # GET /repost_urls.json
  def index
    @repost_urls = RepostUrl.all
  end

  # GET /repost_urls/1
  # GET /repost_urls/1.json
  def show
  end

  # GET /repost_urls/new
  def new
    @repost_url = RepostUrl.new
  end

  # GET /repost_urls/1/edit
  def edit
  end

  # POST /repost_urls
  # POST /repost_urls.json
  def create
    @repost_url = RepostUrl.new(repost_url_params)

    respond_to do |format|
      if @repost_url.save
        format.html { redirect_to @repost_url, notice: 'Repost url was successfully created.' }
        format.json { render action: 'show', status: :created, location: @repost_url }
      else
        format.html { render action: 'new' }
        format.json { render json: @repost_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repost_urls/1
  # PATCH/PUT /repost_urls/1.json
  def update
    respond_to do |format|
      if @repost_url.update(repost_url_params)
        format.html { redirect_to @repost_url, notice: 'Repost url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @repost_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repost_urls/1
  # DELETE /repost_urls/1.json
  def destroy
    @repost_url.destroy
    respond_to do |format|
      format.html { redirect_to repost_urls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repost_url
      @repost_url = RepostUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repost_url_params
      params.require(:repost_url).permit(:url)
    end
end
