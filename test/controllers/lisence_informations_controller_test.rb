require 'test_helper'

class LisenceInformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lisence_informations_index_url
    assert_response :success
  end

end
