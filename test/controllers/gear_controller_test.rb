require 'test_helper'

class GearControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gear_index_url
    assert_response :success
  end

  test "should get import" do
    get gear_import_url
    assert_response :success
  end

end
