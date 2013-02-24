require 'spec_helper'

describe Product do
  it 'can be initialize' do
    product = Product.new
    product.should_not be_persisted
  end
end
