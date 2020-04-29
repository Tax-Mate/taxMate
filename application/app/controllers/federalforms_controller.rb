class FederalformsController < ApplicationController
  before_action :set_federalform, only: [:show, :edit, :update, :destroy]
 
  
  # GET /federalforms
  # GET /federalforms.json
  def index
    @federalforms = Federalform.all
  end

  # GET /federalforms/1
  # GET /federalforms/1.json
  def show
  @federalform = Federalform.find(params[:id])
  end

  # GET /federalforms/new
  def new
    @federalform = Federalform.new
  end

  # GET /federalforms/1/edit
  def edit
  end

  # POST /federalforms
  # POST /federalforms.json
  def create
    @federalform = Federalform.new(federalform_params)
    @federalform.user = current_user
        
   def calculate
    total = (@federalform.income + 12)
    return total
   end

    respond_to do |format|
      if @federalform.save
        format.html { redirect_to @federalform, notice: 'Hurray your Estimate is here !!!' }
        format.json { render :show, status: :created, location: @federalform }
      else
        format.html { render :new }
        format.json { render json: @federalform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /federalforms/1
  # PATCH/PUT /federalforms/1.json
  def update
    respond_to do |format|
      if @federalform.update(federalform_params)
        format.html { redirect_to @federalform, notice: 'Federalform was successfully updated.' }
        format.json { render :show, status: :ok, location: @federalform }
      else
        format.html { render :edit }
        format.json { render json: @federalform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /federalforms/1
  # DELETE /federalforms/1.json
  def destroy
    @federalform.destroy
    respond_to do |format|
      format.html { redirect_to federalforms_url, notice: 'Federalform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
 
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_federalform
      @federalform = Federalform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def federalform_params
      params.require(:federalform).permit(:date, :tax, :time_type, :income)
    end
end
