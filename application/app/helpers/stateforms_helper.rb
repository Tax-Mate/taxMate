module StateformsHelper
def calculate (income, status, state )
      @income = @stateform.income
           
      @state =  @stateform.state
      @status = @stateform.status
      
    if (@status == "single")
        case @stateform.state
           when "NC"  
               
                 return  @total = (@stateform.income * 0.129) 
           when "AL"
               if @income <3000
                   return  @total = (@stateform.income * 0.02) 
               elsif @income >= 3000
                return  @total = (@stateform.income * 0.05) 
                    
               end
           
           when "AK"
           return  @total = @stateform.income
           when "AZ"
               if@income <=26000
                   return  @total = (@stateform.income * 0.0259) 
               elsif @income >26501||@income >= 53000
                return  @total = (@stateform.income * 0.0334)
               end
                    
            
           when "AR"
           return  @total = (@stateform.income * 0.129) 
           when "CA"
           return  @total = (@stateform.income * 0.129) 
           when "CO"
           return  @total = (@stateform.income * 0.129) 
           when "CT"
           return  @total = (@stateform.income * 0.129) 
           when "DE"
           return  @total = (@stateform.income * 0.129) 
           when "DC"
           return  @total = (@stateform.income * 0.129) 
           when "FL"
           return  @total = (@stateform.income * 0.129) 
           when "GA"
           return  @total = (@stateform.income * 0.129) 
           when "HI"
           return  @total = (@stateform.income * 0.129) 
           when "ID"
           return  @total = (@stateform.income * 0.129) 
           when "IL"
           return  @total = (@stateform.income * 0.129) 
           when "IA"
           return  @total = (@stateform.income * 0.129) 
           
        end
    
    else if @status == "joint"
         case @stateform.state
           when "NC"  
               
                 return  @total = (@stateform.income * 0.129)*2 
           when "AL"
               if @income <3000
                   return  @total = (@stateform.income * 0.02)*2
               elsif @income >= 3000
                return  @total = (@stateform.income * 0.05)*2
                    
               end
           
           when "AK"
           return  @total = @stateform.income
           when "AZ"
               if@income <=26000
                   return  @total = (@stateform.income * 0.0259) 
               elsif @income >26501||@income >= 53000
                return  @total = (@stateform.income * 0.0334)
               end
                    
    end

  
end
end




def taxinfo
    
end

end
end