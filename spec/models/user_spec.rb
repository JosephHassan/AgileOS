require_relative '../spec_helper'
require_relative '../../app/models/user'

describe User do

  before :each do
    @user = build(:user)
  end

  context '#all methods and variables' do
    it 'has a first_name property' do
      @user.should respond_to(:first_name)
      @user.first_name.is_a?(String)
    end

    it 'has a last_name property' do
      @user.should respond_to(:last_name)
      @user.last_name.is_a?(String)
    end

    it 'has a full name method that returns the first_name + space + last_name' do
      @user.full_name.should eq(@user.first_name + ' ' + @user.last_name)
    end

    it 'has a username field' do
      @user.should respond_to(:username)
    end
  end

  context '#validations' do

    it 'should validate first_name' do
      build(:invalid_first_name).should_not be_valid
    end

    it 'should validate last_name' do
      build(:invalid_last_name).should_not be_valid
    end

    it 'should validate username' do
      build(:invalid_username).should_not be_valid
    end
  end
end