require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
    @story = stories(:two)
    @task.story_id = Story.find(:first)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    session[:session_id] = story.id
    get :new
    assert_response :success
  end

  
  test "Should not get the new task form without context of a story" do
    session[:story_id] = nil
    get :new
    assert_redirected_to stories_path
  end

  test "should create task" do
    assert_difference('Task.count') do

      post :create, task: { description: @task.description, due_date: @task.due_date, title: @task.title, story_id: @task.story_id }
    end

    assert_redirected_to story_path()#task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { description: @task.description, due_date: @task.due_date, title: @task.title }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
