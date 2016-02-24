require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns :products
    assert_template :index, message: "Wrong template"
    assert_template layout: "application"
  end

end
