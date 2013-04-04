require 'spec_helper'

describe "Products" do
  before :each do
    @user = Fabricate(:user)
  end

  describe "GET /#/products", js: true do
    it "works!" do
      user_sign_in_with_visit(@user, 'PASSWORD')
      visit "/#/#{products_path}"
      page.should have_content 'Products'
    end
  end
end
