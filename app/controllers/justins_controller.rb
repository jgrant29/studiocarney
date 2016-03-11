class JustinsController < ApplicationController
  before_action :set_justin, only: [:show, :edit, :update, :destroy]

  # GET /justins
  # GET /justins.json
  def index
    @justins = Justin.all
  end

  # GET /justins/1
  # GET /justins/1.json
  def show
  end

  # GET /justins/new
  def new
    @justin = Justin.new
  end

  # GET /justins/1/edit
  def edit
  end

  # POST /justins
  # POST /justins.json
  def create
    @justin = Justin.new(justin_params)

    respond_to do |format|
      if @justin.save
        format.html { redirect_to @justin, notice: 'Justin was successfully created.' }
        format.json { render :show, status: :created, location: @justin }
      else
        format.html { render :new }
        format.json { render json: @justin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /justins/1
  # PATCH/PUT /justins/1.json
  def update
    respond_to do |format|
      if @justin.update(justin_params)
        format.html { redirect_to @justin, notice: 'Justin was successfully updated.' }
        format.json { render :show, status: :ok, location: @justin }
      else
        format.html { render :edit }
        format.json { render json: @justin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /justins/1
  # DELETE /justins/1.json
  def destroy
    @justin.destroy
    respond_to do |format|
      format.html { redirect_to justins_url, notice: 'Justin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_justin
      @justin = Justin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def justin_params
      params.require(:justin).permit(:title, :body)
    end
end
