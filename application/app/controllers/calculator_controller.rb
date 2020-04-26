class CalculatorController < ApplicationController
  def index
  end

  def new
    @result = Calculator.send(calculate_params)
    render :index
  end


def calculate_params
      params.require(:calculate).permit(:date, :tax, :income,:status ,:state )
end

end