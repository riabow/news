class Sp2sController < ApplicationController
  before_action :set_sp2, only: [:show, :edit, :update, :destroy]

  # GET /sp2s
  # GET /sp2s.json
  def index
    @sp2s = Sp2.all
  end

  # GET /sp2s/1
  # GET /sp2s/1.json
  def show
  end

  # GET /sp2s/new
  def new
    @sp2 = Sp2.new
  end

  # GET /sp2s/1/edit
  def edit
  end

  # POST /sp2s
  # POST /sp2s.json
  def create
    @sp2 = Sp2.new(sp2_params)

    respond_to do |format|
      if @sp2.save
        format.html { redirect_to @sp2, notice: 'Sp2 was successfully created.' }
        format.json { render :show, status: :created, location: @sp2 }
      else
        format.html { render :new }
        format.json { render json: @sp2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sp2s/1
  # PATCH/PUT /sp2s/1.json
  def update
    respond_to do |format|
      if @sp2.update(sp2_params)
        format.html { redirect_to @sp2, notice: 'Sp2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @sp2 }
      else
        format.html { render :edit }
        format.json { render json: @sp2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sp2s/1
  # DELETE /sp2s/1.json
  def destroy
    @sp2.destroy
    respond_to do |format|
      format.html { redirect_to sp2s_url, notice: 'Sp2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sp2
      @sp2 = Sp2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sp2_params
      params.require(:sp2).permit(:name, :city)
    end
end
