require "application_system_test_case"

class PendidikansTest < ApplicationSystemTestCase
  setup do
    @pendidikan = pendidikans(:one)
  end

  test "visiting the index" do
    visit pendidikans_url
    assert_selector "h1", text: "Pendidikans"
  end

  test "creating a Pendidikan" do
    visit pendidikans_url
    click_on "New Pendidikan"

    fill_in "Pendidikan terakhir", with: @pendidikan.pendidikan_terakhir
    click_on "Create Pendidikan"

    assert_text "Pendidikan was successfully created"
    click_on "Back"
  end

  test "updating a Pendidikan" do
    visit pendidikans_url
    click_on "Edit", match: :first

    fill_in "Pendidikan terakhir", with: @pendidikan.pendidikan_terakhir
    click_on "Update Pendidikan"

    assert_text "Pendidikan was successfully updated"
    click_on "Back"
  end

  test "destroying a Pendidikan" do
    visit pendidikans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pendidikan was successfully destroyed"
  end
end
