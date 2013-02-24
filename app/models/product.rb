# -*- coding: utf-8 -*-

class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :code, type: String
end
