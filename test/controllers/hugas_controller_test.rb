require "test_helper"

class HugasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @huga = hugas(:one)
  end

  test "should get index" do
    get hugas_url
    assert_response :success
  end

  test "should get new" do
    get new_huga_url
    assert_response :success
  end

  test "should create huga" do
    assert_difference("Huga.count") do
      post hugas_url, params: { huga: {  } }
    end

    assert_redirected_to huga_url(Huga.last)
  end

  test "should show huga" do
    get huga_url(@huga)
    assert_response :success
  end

  test "should get edit" do
    get edit_huga_url(@huga)
    assert_response :success
  end

  test "should update huga" do
    patch huga_url(@huga), params: { huga: {  } }
    assert_redirected_to huga_url(@huga)
  end

  test "should destroy huga" do
    assert_difference("Huga.count", -1) do
      delete huga_url(@huga)
    end

    assert_redirected_to hugas_url
  end
end
