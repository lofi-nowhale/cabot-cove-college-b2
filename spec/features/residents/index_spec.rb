require "rails_helper"

RSpec.describe "residents index page" do 
  before(:each) do 
    @resident_1 = Resident.create!(name: "Jessica Fletcher", age: 65, occupation: "Mystery writer") 
    @resident_2 = Resident.create!(name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor") 
  end

  it "can display each resident with their name, age, and occupation" do 
    visit "/residents"
    save_and_open_page
    
    within '.resident_info' do
      expect(page).to have_content(@resident_1.name)
      expect(page).to have_content(@resident_1.age)
      expect(page).to have_content(@resident_1.occupation)

      expect(page).to have_content(@resident_2.name)
      expect(page).to have_content(@resident_2.age)
      expect(page).to have_content(@resident_2.occupation)
    end
  end
end