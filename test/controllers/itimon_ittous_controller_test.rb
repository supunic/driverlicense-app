require 'test_helper'

class ItimonIttousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itimon_ittous_index_url
    assert_response :success
  end

end
