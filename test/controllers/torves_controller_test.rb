require 'test_helper'

class TorvesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get torves_create_url
    assert_response :success
  end

end
