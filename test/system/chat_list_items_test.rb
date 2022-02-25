require "application_system_test_case"

class ChatListItemsTest < ApplicationSystemTestCase
  setup do
    @chat_list_item = chat_list_items(:one)
  end

  test "visiting the index" do
    visit chat_list_items_url
    assert_selector "h1", text: "Chat List Items"
  end

  test "creating a Chat list item" do
    visit chat_list_items_url
    click_on "New Chat List Item"

    click_on "Create Chat list item"

    assert_text "Chat list item was successfully created"
    click_on "Back"
  end

  test "updating a Chat list item" do
    visit chat_list_items_url
    click_on "Edit", match: :first

    click_on "Update Chat list item"

    assert_text "Chat list item was successfully updated"
    click_on "Back"
  end

  test "destroying a Chat list item" do
    visit chat_list_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chat list item was successfully destroyed"
  end
end
