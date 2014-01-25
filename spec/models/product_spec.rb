require 'rspec'
require_relative '../spec_helper'
require_relative '../../app/models/product'

describe Product do
  before :each do
    @product = build(:product)
  end

  context '#properties' do

    it 'has a title' do
      @product.should respond_to(:title)
    end

    it 'has a description' do
      @product.should respond_to(:description)
    end

  end

  context '#validations' do
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

  context '#scopes' do
    it 'has a stories scope' do
      @product.should respond_to(:stories)
    end

    it 'has releases scope' do
      @product.should respond_to(:releases)
    end

    it 'has epics scope' do
      @product.should respond_to(:epics)
    end

  end
end