class SuplsController < ApplicationController
  before_action :set_supl, only: [:show, :edit, :update, :destroy]

  # GET /supls
  # GET /supls.json
  def index
    @supls = Supl.all
  end

  # GET /supls/1
  # GET /supls/1.json
  def show
  end

  # GET /supls/new
  def new
    @supl = Supl.new
  end

  # GET /supls/1/edit
  def edit
  end

  # POST /supls
  # POST /supls.json
  def create
    @supl = Supl.new(supl_params)

    respond_to do |format|
      if @supl.save
        format.html { redirect_to @supl, notice: 'Supl was successfully created.' }
        format.json { render :show, status: :created, location: @supl }
      else
        format.html { render :new }
        format.json { render json: @supl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supls/1
  # PATCH/PUT /supls/1.json
  def update
    respond_to do |format|
      if @supl.update(supl_params)
        format.html { redirect_to @supl, notice: 'Supl was successfully updated.' }
        format.json { render :show, status: :ok, location: @supl }
      else
        format.html { render :edit }
        format.json { render json: @supl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supls/1
  # DELETE /supls/1.json
  def destroy
    @supl.destroy
    respond_to do |format|
      format.html { redirect_to supls_url, notice: 'Supl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supl
      @supl = Supl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supl_params
      params.require(:supl).permit(:name, :city)
    end
end
