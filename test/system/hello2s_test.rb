require "application_system_test_case"

class Hello2sTest < ApplicationSystemTestCase
  setup do
    @hello2 = hello2s(:one)
  end

  test "visiting the index" do
    visit hello2s_url
    assert_selector "h1", text: "Hello2s"
  end

  test "should create hello2" do
    visit hello2s_url
    click_on "New hello2"

    click_on "Create Hello2"

    assert_text "Hello2 was successfully created"
    click_on "Back"
  end

  test "should update Hello2" do
    visit hello2_url(@hello2)
    click_on "Edit this hello2", match: :first

    click_on "Update Hello2"

    assert_text "Hello2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Hello2" do
    visit hello2_url(@hello2)
    click_on "Destroy this hello2", match: :first

    assert_text "Hello2 was successfully destroyed"
  end
end
