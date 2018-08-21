require 'test_helper'

class DishTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_type = dish_types(:one)
  end

  test "should get index" do
    get dish_types_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_type_url
    assert_response :success
  end

  test "should create dish_type" do
    assert_difference('DishType.count') do
      post dish_types_url, params: { dish_type: {  } }
    end

    assert_redirected_to dish_type_url(DishType.last)
  end

  test "should show dish_type" do
    get dish_type_url(@dish_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_type_url(@dish_type)
    assert_response :success
  end

  test "should update dish_type" do
    patch dish_type_url(@dish_type), params: { dish_type: {  } }
    assert_redirected_to dish_type_url(@dish_type)
  end

  test "should destroy dish_type" do
    assert_difference('DishType.count', -1) do
      delete dish_type_url(@dish_type)
    end

    assert_redirected_to dish_types_url
  end
end
