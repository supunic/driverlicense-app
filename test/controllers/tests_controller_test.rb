require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "should get letsencrypt" do
    get tests_letsencrypt_url
    assert_response :success
  end

end
