require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    
    it "should have content 'Sampe App'" do
     visit '/static_pages/home'
     expect(page).to have_content('Sample App')
    end
  end
end
