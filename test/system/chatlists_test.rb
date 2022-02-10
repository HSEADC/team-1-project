require "application_system_test_case"

class ChatlistsTest < ApplicationSystemTestCase
  setup do
    @chatlist = chatlists(:one)
  end

  test "visiting the index" do
    visit chatlists_url
    assert_selector "h1", text: "Chatlists"
  end

  test "creating a Chatlist" do
    visit chatlists_url
    click_on "New Chatlist"

    fill_in "Id", with: @chatlist.id
    check "Quited" if @chatlist.quited
    click_on "Create Chatlist"

    assert_text "Chatlist was successfully created"
    click_on "Back"
  end

  test "updating a Chatlist" do
    visit chatlists_url
    click_on "Edit", match: :first

    fill_in "Id", with: @chatlist.id
    check "Quited" if @chatlist.quited
    click_on "Update Chatlist"

    assert_text "Chatlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Chatlist" do
    visit chatlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chatlist was successfully destroyed"
  end
end
