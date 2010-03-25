require 'test_helper'

class MuestrasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muestras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muestra" do
    assert_difference('Muestra.count') do
      post :create, :muestra => { }
    end

    assert_redirected_to muestra_path(assigns(:muestra))
  end

  test "should show muestra" do
    get :show, :id => muestras(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => muestras(:one).to_param
    assert_response :success
  end

  test "should update muestra" do
    put :update, :id => muestras(:one).to_param, :muestra => { }
    assert_redirected_to muestra_path(assigns(:muestra))
  end

  test "should destroy muestra" do
    assert_difference('Muestra.count', -1) do
      delete :destroy, :id => muestras(:one).to_param
    end

    assert_redirected_to muestras_path
  end
end
