require "test_helper"

class Hello2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hello2 = hello2s(:one)
  end

  test "should get index" do
    get hello2s_url
    assert_response :success
  end

  test "should get new" do
    get new_hello2_url
    assert_response :success
  end

  test "should create hello2" do
    assert_difference("Hello2.count") do
      post hello2s_url, params: { hello2: {  } }
    end

    assert_redirected_to hello2_url(Hello2.last)
  end

  test "should show hello2" do
    get hello2_url(@hello2)
    assert_response :success
  end

  test "should get edit" do
    get edit_hello2_url(@hello2)
    assert_response :success
  end

  test "should update hello2" do
    patch hello2_url(@hello2), params: { hello2: {  } }
    assert_redirected_to hello2_url(@hello2)
  end

  test "should destroy hello2" do
    assert_difference("Hello2.count", -1) do
      delete hello2_url(@hello2)
    end

    assert_redirected_to hello2s_url
  end
end
