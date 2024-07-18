require "application_system_test_case"

class HugasTest < ApplicationSystemTestCase
  setup do
    @huga = hugas(:one)
  end

  test "visiting the index" do
    visit hugas_url
    assert_selector "h1", text: "Hugas"
  end

  test "should create huga" do
    visit hugas_url
    click_on "New huga"

    click_on "Create Huga"

    assert_text "Huga was successfully created"
    click_on "Back"
  end

  test "should update Huga" do
    visit huga_url(@huga)
    click_on "Edit this huga", match: :first

    click_on "Update Huga"

    assert_text "Huga was successfully updated"
    click_on "Back"
  end

  test "should destroy Huga" do
    visit huga_url(@huga)
    click_on "Destroy this huga", match: :first

    assert_text "Huga was successfully destroyed"
  end
end
