require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get archive" do
    get pages_archive_url
    assert_response :success
  end

  test "should get questions" do
    get pages_questions_url
    assert_response :success
  end
end
