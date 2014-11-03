require 'test_helper'

class NewbornsControllerTest < ActionController::TestCase
  setup do
    @newborn = newborns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newborns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newborn" do
    assert_difference('Newborn.count') do
      post :create, newborn: { date_of_birth: @newborn.date_of_birth, name: @newborn.name, number_of_weeks: @newborn.number_of_weeks }
    end

    assert_redirected_to newborn_path(assigns(:newborn))
  end

  test "should show newborn" do
    get :show, id: @newborn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newborn
    assert_response :success
  end

  test "should update newborn" do
    patch :update, id: @newborn, newborn: { date_of_birth: @newborn.date_of_birth, name: @newborn.name, number_of_weeks: @newborn.number_of_weeks }
    assert_redirected_to newborn_path(assigns(:newborn))
  end

  test "should destroy newborn" do
    assert_difference('Newborn.count', -1) do
      delete :destroy, id: @newborn
    end

    assert_redirected_to newborns_path
  end
end
