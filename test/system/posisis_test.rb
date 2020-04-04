require "application_system_test_case"

class PosisisTest < ApplicationSystemTestCase
  setup do
    @posisi = posisis(:one)
  end

  test "visiting the index" do
    visit posisis_url
    assert_selector "h1", text: "Posisis"
  end

  test "creating a Posisi" do
    visit posisis_url
    click_on "New Posisi"

    fill_in "Posisi", with: @posisi.posisi
    click_on "Create Posisi"

    assert_text "Posisi was successfully created"
    click_on "Back"
  end

  test "updating a Posisi" do
    visit posisis_url
    click_on "Edit", match: :first

    fill_in "Posisi", with: @posisi.posisi
    click_on "Update Posisi"

    assert_text "Posisi was successfully updated"
    click_on "Back"
  end

  test "destroying a Posisi" do
    visit posisis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Posisi was successfully destroyed"
  end
end
