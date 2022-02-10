class ChatlistsController < ApplicationController
  before_action :set_chatlist, only: %i[ show edit update destroy ]

  # GET /chatlists or /chatlists.json
  def index
    @chatlists = Chatlist.all
  end

  # GET /chatlists/1 or /chatlists/1.json
  def show
  end

  # GET /chatlists/new
  def new
    @chatlist = Chatlist.new
  end

  # GET /chatlists/1/edit
  def edit
  end

  # POST /chatlists or /chatlists.json
  def create
    @chatlist = Chatlist.new(chatlist_params)

    respond_to do |format|
      if @chatlist.save
        format.html { redirect_to @chatlist, notice: "Chatlist was successfully created." }
        format.json { render :show, status: :created, location: @chatlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chatlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatlists/1 or /chatlists/1.json
  def update
    respond_to do |format|
      if @chatlist.update(chatlist_params)
        format.html { redirect_to @chatlist, notice: "Chatlist was successfully updated." }
        format.json { render :show, status: :ok, location: @chatlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chatlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatlists/1 or /chatlists/1.json
  def destroy
    @chatlist.destroy
    respond_to do |format|
      format.html { redirect_to chatlists_url, notice: "Chatlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatlist
      @chatlist = Chatlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chatlist_params
      params.require(:chatlist).permit(:id, :quited)
    end
end
