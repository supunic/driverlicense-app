require 'test_helper'

class ProtectionOfPersonalDatasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get protection_of_personal_datas_index_url
    assert_response :success
  end

end
