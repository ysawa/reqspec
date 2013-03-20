# -*- coding: utf-8 -*-

Reqspec::Application.routes.draw do
  resources :products do
    collection do
      get 'page/:page', action: :index
    end
  end

  root to: "home#index"
end
