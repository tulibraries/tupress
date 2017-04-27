require 'test_helper'

class RepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rep = reps(:one)
  end

  test "should get index" do
    get reps_url
    assert_response :success
  end

  test "should get new" do
    get new_rep_url
    assert_response :success
  end

  test "should create rep" do
    assert_difference('Rep.count') do
      post reps_url, params: { rep: { address2: @rep.address2, address3: @rep.address3, address: @rep.address, company: @rep.company, email: @rep.email, fax: @rep.fax, name: @rep.name, phone: @rep.phone, region: @rep.region, website: @rep.website } }
    end

    assert_redirected_to rep_url(Rep.last)
  end

  test "should show rep" do
    get rep_url(@rep)
    assert_response :success
  end

  test "should get edit" do
    get edit_rep_url(@rep)
    assert_response :success
  end

  test "should update rep" do
    patch rep_url(@rep), params: { rep: { address2: @rep.address2, address3: @rep.address3, address: @rep.address, company: @rep.company, email: @rep.email, fax: @rep.fax, name: @rep.name, phone: @rep.phone, region: @rep.region, website: @rep.website } }
    assert_redirected_to rep_url(@rep)
  end

  test "should destroy rep" do
    assert_difference('Rep.count', -1) do
      delete rep_url(@rep)
    end

    assert_redirected_to reps_url
  end
end
