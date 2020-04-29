module FedformsHelper
    def calculate (income, status)
      @income = @stateform.income
           
      
      @status = @stateform.status
      
    if (@status == "single")
        case @income
           when @income<= 9,875
               
                 return  @total = (@stateform.income * 0.10) 
           
               when @income >9876 || @income<=40,125
                   return  @total = (@stateform.income * 0.12) 
              when @income >40126 || @income<=858525
                return  @total = (@stateform.income * 0.22) 
                    
               when @income >85826 || @income<=163300
                      return  @total = (@stateform.income * 0.24) 
         
                      when @income >16334
                      return  @total = (@stateform.income * 0.37) 
            
          
        end
    
    else if @status == "joint"
        case @income
           when @income<= 9,875 
               
                 return  @total = (@stateform.income * 0.10)*2
           
               when @income >9876 || @income<=40,125
                   return  @total = (@stateform.income * 0.12) *2
              when @income >40126 || @income<=858525
                return  @total = (@stateform.income * 0.22) *2
                    
               when @income >85826 || @income<=163300
                      return  @total = (@stateform.income * 0.24) *2
         
                      when @income >16334
                      return  @total = (@stateform.income * 0.37) *2
            
          
        end

  
   end
end




def taxinfo
    
end

   end
end
