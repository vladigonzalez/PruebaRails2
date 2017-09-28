require 'test_helper'

class ListasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get listasks_create_url
    assert_response :success
  end

end
