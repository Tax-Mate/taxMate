require 'rails_helper.rb'

feature "Blogger adds an input" do
    scenario "Blogger succesfully navigates to the new federalform page from the home  page" do
        visit federalforms_path
        expect(page).to have_content("Federal and Local Income Tax")
        click_link "Find Out How Much You Owe"
        expect(page).to have_content("Federal Calculator")
        expect(page).to have_field("Income")
        
    end
     scenario "Blogger cannot  create a federalforms without loggin in " do
        visit new_federalform_path
         expect(page).to have_content("Federal Calculator")
         fill_in "Income", with: "600"
        
        click_button "Calculate"
        expect(page).to have_content("User must exist")
      
    end
    
    
     scenario "Blogger succesfully navigates to the new State form page from the home  page" do
        visit stateforms_path
        expect(page).to have_content("State and Local Income Tax")
        click_link "Find Out How Much You Owe"
        expect(page).to have_content("State Calculator")
        expect(page).to have_field("Income")
        
    end
        
        
     scenario "Blogger cannot  create a Stateforms without Loggin In  " do
        visit new_stateform_path
         expect(page).to have_content("State Calculator")
         fill_in "Income", with: ""
        
        click_button "Calculate"
        expect(page).to have_content("Log In")
      
    end
end