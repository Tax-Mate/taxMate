module FederalformsHelper
   def calculatefed (income, status)
      @income = @federalform.income
           
      
      @status = @federalform.time_type
      
    if (@status == "single")
        
           if @income <= 9875
               
                 return  @total = (@federalform.income * 0.10) 
           
           elsif @income >9876 or @income<=40125
                   return  @total = (@federalform.income * 0.12) 
              elsif @income >40126 or @income<=858525
                return  @total = (@federalform.income * 0.22) 
                    
               elsif @income >85826 || @income<=163300
                      return  @total = (@federalform.income * 0.24) 
         
                      elsif @income >16334
                      return  @total = (@federalform.income * 0.37) 
            
          
        end
    
    else if @status == "joint"
       
           if @income<= 9875 
               
                 return  @total = (@federalform.income * 0.10)*2
           
               elsif @income >9876 || @income<=40125
                   return  @total = (@federalform.income * 0.12) *2
              elsif @income >40126 || @income<=858525
                return  @total = (@federalform.income * 0.22) *2
                    
               elsif @income >85826 || @income<=163300
                      return  @total = (@federalform.income * 0.24) *2
         
                      elsif @income >16334
                      return  @total = (@federalform.income * 0.37) *2
            
          
        end

  
   end
end



end
   
end
