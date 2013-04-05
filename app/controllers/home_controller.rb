# -*- coding: utf-8 -*-

class HomeController < ApplicationController
  layout 'home'

  def index
    @user = current_user
    gon.rabl template: "app/views/users/show.json.rabl", as: "current_user"
  end
end
