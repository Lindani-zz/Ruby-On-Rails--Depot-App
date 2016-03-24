require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:user1)
    @product = products(:ruby)
    @update = {
    title: 'Lorem Ipsum',
    description: 'Wibbles are fun!',
    image_url: 'lorem.jpg',
    price: 19.95
   }
  end

  test "should get index" do
    # sign_in users(:user1)
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { description: "Ruby on Rails is much funner than I thought", image_url: "MyString.png", price: 9.99, title: "Programming Ruby On Rails  2.2.4 " }
    end
    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    # sign_in users(:user1)
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
