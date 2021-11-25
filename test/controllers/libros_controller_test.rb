require "test_helper"

class LibrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get libros_index_url
    assert_response :success
  end

  test "should get show" do
    get libros_show_url
    assert_response :success
  end

  test "should get edit" do
    get libros_edit_url
    assert_response :success
  end
end
