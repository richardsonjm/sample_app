require 'spec_helper'

describe "Static Pages" do

  let (:base_title) {"Ruby on Rails Tutorial Sample App"}

  subject {page}

  describe "Home Page" do
    before {visit root_path}

    it {should have_content('Sample App')}
    # it "should have the h1 'Sampe App'" do
    #  expect(page).to have_content('Sample App')
    # end

    it {should have_title(full_title(''))}
    # it "should have the base title" do
    #   expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    # end

    it {should_not have_title('| Home')}
    # it "should not have a custom page title" do
    #   expect(page).not_to have_title('| Home')
    # end
  end

  describe "Help Page" do
    before {visit help_path}

    it "should have the h1 'Help'" do
      expect(page).to have_content('Help')
    end

    
    it "should have the title 'Help'" do
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Page" do
    before {visit about_path}

    it "should have the h1 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("#{base_title} | About")
    end
  end


  describe "Contact Page" do
    before {visit contact_path}

    it "should have content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the right 'Contact'" do
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
