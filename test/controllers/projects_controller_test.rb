require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get tasks" do
    get :tasks
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

end
