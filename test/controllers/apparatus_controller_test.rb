require 'test_helper'

class ApparatusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apparatu = apparatus(:one)
  end

  test "should get index" do
    get apparatus_url
    assert_response :success
  end

  test "should get new" do
    get new_apparatu_url
    assert_response :success
  end

  test "should create apparatu" do
    assert_difference('Apparatu.count') do
      post apparatus_url, params: { apparatu: { code: @apparatu.code, current: @apparatu.current, department_id: @apparatu.department_id, name: @apparatu.name } }
    end

    assert_redirected_to apparatu_url(Apparatu.last)
  end

  test "should show apparatu" do
    get apparatu_url(@apparatu)
    assert_response :success
  end

  test "should get edit" do
    get edit_apparatu_url(@apparatu)
    assert_response :success
  end

  test "should update apparatu" do
    patch apparatu_url(@apparatu), params: { apparatu: { code: @apparatu.code, current: @apparatu.current, department_id: @apparatu.department_id, name: @apparatu.name } }
    assert_redirected_to apparatu_url(@apparatu)
  end

  test "should destroy apparatu" do
    assert_difference('Apparatu.count', -1) do
      delete apparatu_url(@apparatu)
    end

    assert_redirected_to apparatus_url
  end
end
