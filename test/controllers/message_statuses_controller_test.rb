require "test_helper"

class MessageStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_status = message_statuses(:one)
  end

  test "should get index" do
    get message_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_message_status_url
    assert_response :success
  end

  test "should create message_status" do
    assert_difference('MessageStatus.count') do
      post message_statuses_url, params: { message_status: {  } }
    end

    assert_redirected_to message_status_url(MessageStatus.last)
  end

  test "should show message_status" do
    get message_status_url(@message_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_status_url(@message_status)
    assert_response :success
  end

  test "should update message_status" do
    patch message_status_url(@message_status), params: { message_status: {  } }
    assert_redirected_to message_status_url(@message_status)
  end

  test "should destroy message_status" do
    assert_difference('MessageStatus.count', -1) do
      delete message_status_url(@message_status)
    end

    assert_redirected_to message_statuses_url
  end
end
