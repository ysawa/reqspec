# -*- coding: utf-8 -*-

require 'spec_helper'

describe "users/show.json.rabl" do
  before :each do
    @user = Fabricate(:user)
    assign(:user, @user)
  end

  it 'renders successfully' do
    render
    user_object = JSON.parse rendered
    user_object['email'].should == @user.email
    user_object['_id'].should == @user._id.to_s
  end
end
