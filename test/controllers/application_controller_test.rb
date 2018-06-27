require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test 'home' do
    get root_path
    assert_response :ok
  end
end
