require 'test_helper'

class FurnituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furniture = furnitures(:one)
  end

  test "should get index" do
    get furnitures_url
    assert_response :success
  end

  test "should get new" do
    get new_furniture_url
    assert_response :success
  end

  test "should create furniture" do
    assert_difference('Furniture.count') do
      post furnitures_url, params: { furniture: { category_id: @furniture.category_id, description: @furniture.description, height: @furniture.height, manufacturer_id: @furniture.manufacturer_id, name: @furniture.name, price: @furniture.price, width: @furniture.width } }
    end

    assert_redirected_to furniture_url(Furniture.last)
  end

  test "should show furniture" do
    get furniture_url(@furniture)
    assert_response :success
  end

  test "should get edit" do
    get edit_furniture_url(@furniture)
    assert_response :success
  end

  test "should update furniture" do
    patch furniture_url(@furniture), params: { furniture: { category_id: @furniture.category_id, description: @furniture.description, height: @furniture.height, manufacturer_id: @furniture.manufacturer_id, name: @furniture.name, price: @furniture.price, width: @furniture.width } }
    assert_redirected_to furniture_url(@furniture)
  end

  test "should destroy furniture" do
    assert_difference('Furniture.count', -1) do
      delete furniture_url(@furniture)
    end

    assert_redirected_to furnitures_url
  end
end
