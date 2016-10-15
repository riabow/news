require 'test_helper'

class SuplsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supl = supls(:one)
  end

  test "should get index" do
    get supls_url
    assert_response :success
  end

  test "should get new" do
    get new_supl_url
    assert_response :success
  end

  test "should create supl" do
    assert_difference('Supl.count') do
      post supls_url, params: { supl: { city: @supl.city, name: @supl.name } }
    end

    assert_redirected_to supl_url(Supl.last)
  end

  test "should show supl" do
    get supl_url(@supl)
    assert_response :success
  end

  test "should get edit" do
    get edit_supl_url(@supl)
    assert_response :success
  end

  test "should update supl" do
    patch supl_url(@supl), params: { supl: { city: @supl.city, name: @supl.name } }
    assert_redirected_to supl_url(@supl)
  end

  test "should destroy supl" do
    assert_difference('Supl.count', -1) do
      delete supl_url(@supl)
    end

    assert_redirected_to supls_url
  end
end
