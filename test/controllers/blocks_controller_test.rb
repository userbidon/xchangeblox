require 'test_helper'

class BlocksControllerTest < ActionController::TestCase
  setup do
    @block = blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create block" do
    assert_difference('Block.count') do
      post :create, block: { size: @block.size, support_type: @block.support_type, type: @block.type }
    end

    assert_redirected_to block_path(assigns(:block))
  end

  test "should show block" do
    get :show, id: @block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @block
    assert_response :success
  end

  test "should update block" do
    patch :update, id: @block, block: { size: @block.size, support_type: @block.support_type, type: @block.type }
    assert_redirected_to block_path(assigns(:block))
  end

  test "should destroy block" do
    assert_difference('Block.count', -1) do
      delete :destroy, id: @block
    end

    assert_redirected_to blocks_path
  end
end
