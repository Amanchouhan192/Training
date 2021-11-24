require "test_helper"

class RagistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ragistration_index_url
    assert_response :success
  end

  test "should get show" do
    get ragistration_show_url
    assert_response :success
  end

  test "should get new" do
    get ragistration_new_url
    assert_response :success
  end

  test "should get create" do
    get ragistration_create_url
    assert_response :success
  end

  test "should get edit" do
    get ragistration_edit_url
    assert_response :success
  end

  test "should get delete" do
    get ragistration_delete_url
    assert_response :success
  end
end
