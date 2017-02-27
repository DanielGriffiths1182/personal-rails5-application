require 'test_helper'

class NokoBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get noko_books_home_url
    assert_response :success
  end

  test "should get help" do
    get noko_books_help_url
    assert_response :success
  end

end
