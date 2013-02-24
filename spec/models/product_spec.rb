require 'spec_helper'

describe Product do
  it 'can be initialize' do
    product = Product.new
    product.should_not be_persisted
    product.created_at.should be_nil
    product.updated_at.should be_nil
  end
end
