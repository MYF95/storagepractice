require 'test_helper'

class StatementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get statements_index_url
    assert_response :success
  end

  test "should get import" do
    get statements_import_url
    assert_response :success
  end

end
