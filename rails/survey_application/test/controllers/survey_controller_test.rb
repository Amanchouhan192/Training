require "test_helper"

class SurveyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get survey_index_url
    assert_response :success
  end

  test "should get new" do
    get survey_new_url
    assert_response :success
  end

  test "should get create" do
    get survey_create_url
    assert_response :success
  end

  test "should get show" do
    get survey_show_url
    assert_response :success
  end

  test "should get update" do
    get survey_update_url
    assert_response :success
  end

  test "should get edit" do
    get survey_edit_url
    assert_response :success
  end
end
