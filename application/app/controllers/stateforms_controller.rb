class StateformsController < ApplicationController
 before_action :set_stateform, only: [:show, :edit, :update, :destroy,:calculate
 ]
 


  # GET /stateforms
  # GET /stateforms.json
  def index
    @stateform = Stateform.all
    
  end

  # GET /stateforms/1
  # GET /stateforms/1.json
  def show
     
    @stateform = Stateform.find(params[:id])
    
    
  end

  # GET /stateforms/new
  def new
    @stateform = Stateform.new
  end

  # GET /stateforms/1/edit
  def edit
  end

  # POST /stateforms
  # POST /stateforms.json
def create
    @stateform = Stateform.new(stateform_params)
    @stateform.user = current_user
    
    respond_to do |format|
      if @stateform.save
        format.html { redirect_to @stateform, notice: 'Hurray your Estimate is here !!!' }
        format.json { render :show, status: :created, location: @stateform }
        
    
      else
        format.html { render :new }
        format.json { render json: @stateform.errors, status: :unprocessable_entity }
      end
    end
 end

  # PATCH/PUT /stateforms/1
  # PATCH/PUT /stateforms/1.json
  def update
    respond_to do |format|
      if @stateform.update(stateform_params)
        format.html { redirect_to @stateform, notice: 'stateform was successfully updated.' }
        format.json { render :show, status: :ok, location: @stateform }
      else
        format.html { render 'new' }
        format.json { render json: @stateform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stateforms/1
  # DELETE /stateforms/1.json
  def destroy
    @stateform.destroy
    respond_to do |format|
      format.html { redirect_to stateforms_url, notice: 'stateform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  
private
    # Use callbacks to share common setup or constraints between actions.
    def set_stateform
      @stateform = Stateform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stateform_params
      params.require(:stateform).permit(:date, :tax, :time_type, :income,:status ,:state )
    end
    
    def calculate_params
      params.require(:calculate).permit(:date, :tax, :income,:status ,:state )
    end
  end


