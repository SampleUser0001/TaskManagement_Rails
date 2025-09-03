require "application_system_test_case"

class TaskmanagersTest < ApplicationSystemTestCase
  setup do
    @taskmanager = taskmanagers(:one)
  end

  test "visiting the index" do
    visit taskmanagers_url
    assert_selector "h1", text: "Taskmanagers"
  end

  test "should create taskmanager" do
    visit taskmanagers_url
    click_on "New taskmanager"

    fill_in "Memo", with: @taskmanager.memo
    fill_in "Status", with: @taskmanager.status
    fill_in "Title", with: @taskmanager.title
    click_on "Create Taskmanager"

    assert_text "Taskmanager was successfully created"
    click_on "Back"
  end

  test "should update Taskmanager" do
    visit taskmanager_url(@taskmanager)
    click_on "Edit this taskmanager", match: :first

    fill_in "Memo", with: @taskmanager.memo
    fill_in "Status", with: @taskmanager.status
    fill_in "Title", with: @taskmanager.title
    click_on "Update Taskmanager"

    assert_text "Taskmanager was successfully updated"
    click_on "Back"
  end

  test "should destroy Taskmanager" do
    visit taskmanager_url(@taskmanager)
    click_on "Destroy this taskmanager", match: :first

    assert_text "Taskmanager was successfully destroyed"
  end
end
