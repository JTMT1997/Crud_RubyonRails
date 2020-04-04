require 'test_helper'

class PosisisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posisi = posisis(:one)
  end

  test "should get index" do
    get posisis_url
    assert_response :success
  end

  test "should get new" do
    get new_posisi_url
    assert_response :success
  end

  test "should create posisi" do
    assert_difference('Posisi.count') do
      post posisis_url, params: { posisi: { posisi: @posisi.posisi } }
    end

    assert_redirected_to posisi_url(Posisi.last)
  end

  test "should show posisi" do
    get posisi_url(@posisi)
    assert_response :success
  end

  test "should get edit" do
    get edit_posisi_url(@posisi)
    assert_response :success
  end

  test "should update posisi" do
    patch posisi_url(@posisi), params: { posisi: { posisi: @posisi.posisi } }
    assert_redirected_to posisi_url(@posisi)
  end

  test "should destroy posisi" do
    assert_difference('Posisi.count', -1) do
      delete posisi_url(@posisi)
    end

    assert_redirected_to posisis_url
  end
end
