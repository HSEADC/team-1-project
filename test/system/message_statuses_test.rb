require "application_system_test_case"

class MessageStatusesTest < ApplicationSystemTestCase
  setup do
    @message_status = message_statuses(:one)
  end

  test "visiting the index" do
    visit message_statuses_url
    assert_selector "h1", text: "Message Statuses"
  end

  test "creating a Message status" do
    visit message_statuses_url
    click_on "New Message Status"

    click_on "Create Message status"

    assert_text "Message status was successfully created"
    click_on "Back"
  end

  test "updating a Message status" do
    visit message_statuses_url
    click_on "Edit", match: :first

    click_on "Update Message status"

    assert_text "Message status was successfully updated"
    click_on "Back"
  end

  test "destroying a Message status" do
    visit message_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Message status was successfully destroyed"
  end
end
