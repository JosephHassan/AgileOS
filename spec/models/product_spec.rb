require 'rspec'
require_relative '../spec_helper'
require_relative '../../app/models/product'

describe Product do
  before :each do
    @product = build(:product)
  end

  it 'has a title' do
    @product.should respond_to(:title)
  end

  it 'has a description' do
    @product.should respond_to(:description)
  end

  it 'requires a title' do
    product = build(:product_with_missing_title)
    product.should_not be_valid

    @product.should be_valid
  end

  it 'requires a description' do
    product = build(:product_with_missing_description)
    product.should_not be_valid

    @product.should be_valid
  end
end