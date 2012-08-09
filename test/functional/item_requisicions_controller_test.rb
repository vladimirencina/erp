require 'test_helper'

class ItemRequisicionsControllerTest < ActionController::TestCase
  setup do
    @item_requisicion = item_requisicions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_requisicions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_requisicion" do
    assert_difference('ItemRequisicion.count') do
      post :create, :item_requisicion => @item_requisicion.attributes
    end

    assert_redirected_to item_requisicion_path(assigns(:item_requisicion))
  end

  test "should show item_requisicion" do
    get :show, :id => @item_requisicion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @item_requisicion.to_param
    assert_response :success
  end

  test "should update item_requisicion" do
    put :update, :id => @item_requisicion.to_param, :item_requisicion => @item_requisicion.attributes
    assert_redirected_to item_requisicion_path(assigns(:item_requisicion))
  end

  test "should destroy item_requisicion" do
    assert_difference('ItemRequisicion.count', -1) do
      delete :destroy, :id => @item_requisicion.to_param
    end

    assert_redirected_to item_requisicions_path
  end
end
