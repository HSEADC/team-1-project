require "test_helper"

class ChatListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_list_item = chat_list_items(:one)
  end

  test "should get index" do
    get chat_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_list_item_url
    assert_response :success
  end

  test "should create chat_list_item" do
    assert_difference('ChatListItem.count') do
      post chat_list_items_url, params: { chat_list_item: {  } }
    end

    assert_redirected_to chat_list_item_url(ChatListItem.last)
  end

  test "should show chat_list_item" do
    get chat_list_item_url(@chat_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_list_item_url(@chat_list_item)
    assert_response :success
  end

  test "should update chat_list_item" do
    patch chat_list_item_url(@chat_list_item), params: { chat_list_item: {  } }
    assert_redirected_to chat_list_item_url(@chat_list_item)
  end

  test "should destroy chat_list_item" do
    assert_difference('ChatListItem.count', -1) do
      delete chat_list_item_url(@chat_list_item)
    end

    assert_redirected_to chat_list_items_url
  end
end
