require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { author_id: @item.author_id, name: @item.name }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    put :update, id: @item, item: { author_id: @item.author_id, name: @item.name }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end
	
	assert_redirected_to items_path
  end
	
  test "should move to start item" do
	assert_difference('Item.all[1].import_value') do
		post :move_to_start, id: 7
	end

    assert_redirected_to items_path
  end
  
  test "should move to end item" do
	assert_difference('Item.all[1].import_value') do
		post :move_to_end, id: 7
	end

    assert_redirected_to items_path
  end
end
