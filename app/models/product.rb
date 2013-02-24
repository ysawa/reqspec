# -*- coding: utf-8 -*-

class Product
  include Mongoid::Document
  field :name, type: String
  field :code, type: String
end
