require 'test_helper'

class ListStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_step = list_steps(:one)
  end

  test "should get index" do
    get list_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_list_step_url
    assert_response :success
  end

  test "should create list_step" do
    assert_difference('ListStep.count') do
      post list_steps_url, params: { list_step: { completed: @list_step.completed, description: @list_step.description, list_id: @list_step.list_id } }
    end

    assert_redirected_to list_step_url(ListStep.last)
  end

  test "should show list_step" do
    get list_step_url(@list_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_step_url(@list_step)
    assert_response :success
  end

  test "should update list_step" do
    patch list_step_url(@list_step), params: { list_step: { completed: @list_step.completed, description: @list_step.description, list_id: @list_step.list_id } }
    assert_redirected_to list_step_url(@list_step)
  end

  test "should destroy list_step" do
    assert_difference('ListStep.count', -1) do
      delete list_step_url(@list_step)
    end

    assert_redirected_to list_steps_url
  end
end
