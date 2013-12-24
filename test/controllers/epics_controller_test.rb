require 'test_helper'

class EpicsControllerTest < ActionController::TestCase
  setup do
    @epic = epics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:epics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create epic" do
    assert_difference('Epic.count') do
      post :create, epic: { Product_id: @epic.Product_id, description: @epic.description, title: @epic.title }
    end

    assert_redirected_to epic_path(assigns(:epic))
  end

  test "should show epic" do
    get :show, id: @epic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @epic
    assert_response :success
  end

  test "should update epic" do
    patch :update, id: @epic, epic: { Product_id: @epic.Product_id, description: @epic.description, title: @epic.title }
    assert_redirected_to epic_path(assigns(:epic))
  end

  test "should destroy epic" do
    assert_difference('Epic.count', -1) do
      delete :destroy, id: @epic
    end

    assert_redirected_to epics_path
  end
end
