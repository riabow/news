require 'test_helper'

class Sp2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sp2 = sp2s(:one)
  end

  test "should get index" do
    get sp2s_url
    assert_response :success
  end

  test "should get new" do
    get new_sp2_url
    assert_response :success
  end

  test "should create sp2" do
    assert_difference('Sp2.count') do
      post sp2s_url, params: { sp2: { city: @sp2.city, name: @sp2.name } }
    end

    assert_redirected_to sp2_url(Sp2.last)
  end

  test "should show sp2" do
    get sp2_url(@sp2)
    assert_response :success
  end

  test "should get edit" do
    get edit_sp2_url(@sp2)
    assert_response :success
  end

  test "should update sp2" do
    patch sp2_url(@sp2), params: { sp2: { city: @sp2.city, name: @sp2.name } }
    assert_redirected_to sp2_url(@sp2)
  end

  test "should destroy sp2" do
    assert_difference('Sp2.count', -1) do
      delete sp2_url(@sp2)
    end

    assert_redirected_to sp2s_url
  end
end
