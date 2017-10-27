require 'test_helper'

class OabooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oabook = oabooks(:one)
  end

  test "should get index" do
    get oabooks_url
    assert_response :success
  end

  test "should get new" do
    get new_oabook_url
    assert_response :success
  end

  test "should create oabook" do
    assert_difference('Oabook.count') do
      post oabooks_url, params: { oabook: {  } }
    end

    assert_redirected_to oabook_url(Oabook.last)
  end

  test "should show oabook" do
    get oabook_url(@oabook)
    assert_response :success
  end

  test "should get edit" do
    get edit_oabook_url(@oabook)
    assert_response :success
  end

  test "should update oabook" do
    patch oabook_url(@oabook), params: { oabook: {  } }
    assert_redirected_to oabook_url(@oabook)
  end

  test "should destroy oabook" do
    assert_difference('Oabook.count', -1) do
      delete oabook_url(@oabook)
    end

    assert_redirected_to oabooks_url
  end
end
