require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:task_one)
    @story = stories(:story_one)
    @story.save
    @task.story_id = Story.first.id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    session[:story_id] = @story.id
    get :new
    assert_response :success
  end

  
  test "Should not get the new task form without context of a story" do
    session[:story_id] = nil
    get :new
    assert_redirected_to stories_path
  end

  test "should create task" do
    @task.story_id = @story.id
    assert_difference('Task.count') do

      post :create, task: { description: @task.description, due_date: @task.due_date, title: @task.title, story_id: @story.id }
    end

    assert_redirected_to story_path(@task.story_id)#task_path(assigns(:task))
  end

  test "should show task" do
    @task.story_id = @story.id
    session[:story_id] = @task.story_id
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    session[:story_id] = @story.id
    patch :update, id: @task, task: { description: @task.description, due_date: @task.due_date, title: @task.title }
    assert_redirected_to story_path(@story.id)
  end

  test "should destroy task" do
    session[:story_id] = @story.id
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end
    assert_redirected_to story_path(@story.id)
  end
end
