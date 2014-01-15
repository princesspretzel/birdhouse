require 'spec_helper'

describe "user list feature" do

  describe "given that I create a user" do

    before do
          
    end

    it "should let me create a user" do
      visit new_user_registration_path
        fill_in "username", :with => @user[:name] 
        fill_in "password", :with => @user[:password] 
        fill_in "password_confirmation", :with => @user[:password]
        click_button :submit
    end

    it "should take me to the list with the new user" do
        current_path.should == user_path
        page.should have_content(@name)
    end

  describe "given that I visit the user page" do

    before do
      
    end

    it "should display Maybelle's information" do 
        visit users_path
        page.should have_content(@user_name[:name])
    end

end