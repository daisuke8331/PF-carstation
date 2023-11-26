require "test_helper"

class Public::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_categories_index_url
    assert_response :success
  end

  test "should get create" do
    get public_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get public_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_categories_update_url
    assert_response :success
  end
end
