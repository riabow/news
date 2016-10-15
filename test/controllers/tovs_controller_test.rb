require 'test_helper'

class TovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tov = tovs(:one)
  end

  test "should get index" do
    get tovs_url
    assert_response :success
  end

  test "should get new" do
    get new_tov_url
    assert_response :success
  end

  test "should create tov" do
    assert_difference('Tov.count') do
      post tovs_url, params: { tov: { name: @tov.name } }
    end

    assert_redirected_to tov_url(Tov.last)
  end

  test "should show tov" do
    get tov_url(@tov)
    assert_response :success
  end

  test "should get edit" do
    get edit_tov_url(@tov)
    assert_response :success
  end

  test "should update tov" do
    patch tov_url(@tov), params: { tov: { name: @tov.name } }
    assert_redirected_to tov_url(@tov)
  end

  test "should destroy tov" do
    assert_difference('Tov.count', -1) do
      delete tov_url(@tov)
    end

    assert_redirected_to tovs_url
  end
end
