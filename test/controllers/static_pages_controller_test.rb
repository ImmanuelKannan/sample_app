require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success

    # assert_select lets us test for the presence of a particular HTML tag (aka selector).
    # In this case, the tag is "title" and it checks for the string "Home | Ru..."
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
      get :contact
      assert_response :success
      assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
