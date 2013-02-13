require 'test_helper'

class ExhibitiorCategoriesControllerTest < ActionController::TestCase
  setup do
    @exhibitior_category = exhibitior_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitior_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibitior_category" do
    assert_difference('ExhibitiorCategory.count') do
      post :create, exhibitior_category: { name: @exhibitior_category.name }
    end

    assert_redirected_to exhibitior_category_path(assigns(:exhibitior_category))
  end

  test "should show exhibitior_category" do
    get :show, id: @exhibitior_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibitior_category
    assert_response :success
  end

  test "should update exhibitior_category" do
    put :update, id: @exhibitior_category, exhibitior_category: { name: @exhibitior_category.name }
    assert_redirected_to exhibitior_category_path(assigns(:exhibitior_category))
  end

  test "should destroy exhibitior_category" do
    assert_difference('ExhibitiorCategory.count', -1) do
      delete :destroy, id: @exhibitior_category
    end

    assert_redirected_to exhibitior_categories_path
  end
end
