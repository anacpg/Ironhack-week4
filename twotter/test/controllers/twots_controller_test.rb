require 'test_helper'

class TwotsControllerTest < ActionController::TestCase
  setup do
    @twot = twots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twot" do
    assert_difference('Twot.count') do
      post :create, twot: { body: @twot.body }
    end

    assert_redirected_to twot_path(assigns(:twot))
  end

  test "should show twot" do
    get :show, id: @twot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twot
    assert_response :success
  end

  test "should update twot" do
    patch :update, id: @twot, twot: { body: @twot.body }
    assert_redirected_to twot_path(assigns(:twot))
  end

  test "should destroy twot" do
    assert_difference('Twot.count', -1) do
      delete :destroy, id: @twot
    end

    assert_redirected_to twots_path
  end
end
