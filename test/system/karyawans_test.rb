require "application_system_test_case"

class KaryawansTest < ApplicationSystemTestCase
  setup do
    @karyawan = karyawans(:one)
  end

  test "visiting the index" do
    visit karyawans_url
    assert_selector "h1", text: "Karyawans"
  end

  test "creating a Karyawan" do
    visit karyawans_url
    click_on "New Karyawan"

    fill_in "Nama", with: @karyawan.nama
    fill_in "Pendidikan", with: @karyawan.pendidikan_id
    fill_in "Posisi", with: @karyawan.posisi_id
    click_on "Create Karyawan"

    assert_text "Karyawan was successfully created"
    click_on "Back"
  end

  test "updating a Karyawan" do
    visit karyawans_url
    click_on "Edit", match: :first

    fill_in "Nama", with: @karyawan.nama
    fill_in "Pendidikan", with: @karyawan.pendidikan_id
    fill_in "Posisi", with: @karyawan.posisi_id
    click_on "Update Karyawan"

    assert_text "Karyawan was successfully updated"
    click_on "Back"
  end

  test "destroying a Karyawan" do
    visit karyawans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Karyawan was successfully destroyed"
  end
end
