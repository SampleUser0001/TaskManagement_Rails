require "test_helper"

class TaskmanagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taskmanager = taskmanagers(:one)
  end

  test "should get index" do
    get taskmanagers_url
    assert_response :success
  end

  test "should get new" do
    get new_taskmanager_url
    assert_response :success
  end

  test "should create taskmanager" do
    assert_difference("Taskmanager.count") do
      post taskmanagers_url, params: { taskmanager: { memo: @taskmanager.memo, status: @taskmanager.status, title: @taskmanager.title } }
    end

    assert_redirected_to taskmanager_url(Taskmanager.last)
  end

  test "should show taskmanager" do
    get taskmanager_url(@taskmanager)
    assert_response :success
  end

  test "should get edit" do
    get edit_taskmanager_url(@taskmanager)
    assert_response :success
  end

  test "should update taskmanager" do
    patch taskmanager_url(@taskmanager), params: { taskmanager: { memo: @taskmanager.memo, status: @taskmanager.status, title: @taskmanager.title } }
    assert_redirected_to taskmanager_url(@taskmanager)
  end

  test "should destroy taskmanager" do
    assert_difference("Taskmanager.count", -1) do
      delete taskmanager_url(@taskmanager)
    end

    assert_redirected_to taskmanagers_url
  end
end
