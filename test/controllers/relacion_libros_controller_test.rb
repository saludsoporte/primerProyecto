require "test_helper"

class RelacionLibrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get relacion_libros_index_url
    assert_response :success
  end

  test "should get show" do
    get relacion_libros_show_url
    assert_response :success
  end

  test "should get edit" do
    get relacion_libros_edit_url
    assert_response :success
  end
end
