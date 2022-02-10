require "test_helper"

class ChatlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatlist = chatlists(:one)
  end

  test "should get index" do
    get chatlists_url
    assert_response :success
  end

  test "should get new" do
    get new_chatlist_url
    assert_response :success
  end

  test "should create chatlist" do
    assert_difference('Chatlist.count') do
      post chatlists_url, params: { chatlist: { id: @chatlist.id, quited: @chatlist.quited } }
    end

    assert_redirected_to chatlist_url(Chatlist.last)
  end

  test "should show chatlist" do
    get chatlist_url(@chatlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_chatlist_url(@chatlist)
    assert_response :success
  end

  test "should update chatlist" do
    patch chatlist_url(@chatlist), params: { chatlist: { id: @chatlist.id, quited: @chatlist.quited } }
    assert_redirected_to chatlist_url(@chatlist)
  end

  test "should destroy chatlist" do
    assert_difference('Chatlist.count', -1) do
      delete chatlist_url(@chatlist)
    end

    assert_redirected_to chatlists_url
  end
end
