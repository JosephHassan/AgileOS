require 'rspec'
require_relative '../spec_helper'
require_relative '../../app/models/sprint'

describe Sprint do

  before :each do
    @new_sprint = Sprint.new
  end

  context '#methods & properties' do
    it 'has a title' do
      @new_sprint.should respond_to(:title)
    end

    it 'has a description' do
      @new_sprint.should respond_to(:description)
    end

    it 'has a start date' do
      @new_sprint.should respond_to(:start_date)
    end

    it 'has an end date' do
      @new_sprint.should respond_to(:end_date)
    end

    it 'has a status method that returns status based on various conditions' do
      @new_sprint.should respond_to(:status)
    end

    it 'has a committed_number_of_stories field'
    it 'has a completed_number_of_stories field'
    it 'has an is_active? method'
    it 'is_active? method returns true if today is within start and end date'
    it 'has an is_past_due? method'
    it 'is_past_due? method returns true if today is past the start date but the status has not shown a start'

    it 'has an in_planning? method that returns true if there are no start or end dates'

  end

  context '#scopes' do
    it 'has active scope'
    it 'has completed scope'
    it 'has past_due scope'
    it 'has for_product class method'
  end

  context '#validations' do
    it 'validates title'
    it 'validates description'

  end
end