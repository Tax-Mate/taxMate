Class Calculator
def initialize
    @income = income
    
end
    def calculate
       
           @income = @stateform.income
           
            @state =  @stateform.state
            @status = @stateform.status
      if ( @status == true )
                case  @stateform.state
                when "NC"
              @stateform.tax = @stateform.income * 0.0525
		          when "false"
		             @stateform.tax = (@stateform.income * 0.0525) * 2 
                return @stateform.tax
              
               
                else return @stateform.income
    
               
    end
    end
    

