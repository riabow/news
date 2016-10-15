class TovsController < ApplicationController
  before_action :set_tov, only: [:show, :edit, :update, :destroy]

  # GET /tovs
  # GET /tovs.json
  def index
    @tovs = Tov.all
  end

  # GET /tovs/1
  # GET /tovs/1.json
  def show
  end

  # GET /tovs/new
  def new
    @tov = Tov.new
  end

  # GET /tovs/1/edit
  def edit
  end

  # POST /tovs
  # POST /tovs.json
  def create
    @tov = Tov.new(tov_params)

    respond_to do |format|
      if @tov.save
        format.html { redirect_to @tov, notice: 'Tov was successfully created.' }
        format.json { render :show, status: :created, location: @tov }
      else
        format.html { render :new }
        format.json { render json: @tov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tovs/1
  # PATCH/PUT /tovs/1.json
  def update
    respond_to do |format|
      if @tov.update(tov_params)
        format.html { redirect_to tovs_url, notice: 'Tov was successfully updated.' }
        format.json { render :show, status: :ok, location: @tov }
      else
        format.html { render :edit }
        format.json { render json: @tov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tovs/1
  # DELETE /tovs/1.json
  def destroy
    @tov.destroy
    respond_to do |format|
      format.html { redirect_to tovs_url, notice: 'Tov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tov
      @tov = Tov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tov_params
      #params.require(:tov).permit(:name)
      params.require(:tov).permit(:avatar,:name)
    end
end
