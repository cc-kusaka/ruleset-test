require "application_system_test_case"

class HogesTest < ApplicationSystemTestCase
  setup do
    @hoge = hoges(:one)
  end

  test "visiting the index" do
    visit hoges_url
    assert_selector "h1", text: "Hoges"
  end

  test "should create hoge" do
    visit hoges_url
    click_on "New hoge"

    click_on "Create Hoge"

    assert_text "Hoge was successfully created"
    click_on "Back"
  end

  test "should update Hoge" do
    visit hoge_url(@hoge)
    click_on "Edit this hoge", match: :first

    click_on "Update Hoge"

    assert_text "Hoge was successfully updated"
    click_on "Back"
  end

  test "should destroy Hoge" do
    visit hoge_url(@hoge)
    click_on "Destroy this hoge", match: :first

    assert_text "Hoge was successfully destroyed"
  end
end
