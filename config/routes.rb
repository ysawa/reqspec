# -*- coding: utf-8 -*-

Reqspec::Application.routes.draw do
  resources :products


  root to: "home#index"
end
