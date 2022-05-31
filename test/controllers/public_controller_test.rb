require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get public_dashboard_url
    assert_response :success
  end

  test "should get financial" do
    get public_financial_url
    assert_response :success
  end

  test "should get production" do
    get public_production_url
    assert_response :success
  end
end
