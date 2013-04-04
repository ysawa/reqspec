require 'spec_helper'

describe "Sessions" do
  before :each do
    @user = Fabricate(:user)
  end

  describe "sigining in", js: true do
    it "works if user is confirmed" do
      user_sign_in_with_visit(@user, 'PASSWORD')
      page.should have_content 'Home'
    end

    it "fails if user is NOT confirmed" do
      @user.confirmed_at = nil
      @user.save
      user_sign_in_with_visit(@user, 'PASSWORD')
      page.should_not have_content 'Home'
    end
  end
end
