require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get static_pages_search_url
    assert_response :success
  end

end
