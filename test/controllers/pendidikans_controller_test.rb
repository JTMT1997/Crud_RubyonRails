require 'test_helper'

class PendidikansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pendidikan = pendidikans(:one)
  end

  test "should get index" do
    get pendidikans_url
    assert_response :success
  end

  test "should get new" do
    get new_pendidikan_url
    assert_response :success
  end

  test "should create pendidikan" do
    assert_difference('Pendidikan.count') do
      post pendidikans_url, params: { pendidikan: { pendidikan_terakhir: @pendidikan.pendidikan_terakhir } }
    end

    assert_redirected_to pendidikan_url(Pendidikan.last)
  end

  test "should show pendidikan" do
    get pendidikan_url(@pendidikan)
    assert_response :success
  end

  test "should get edit" do
    get edit_pendidikan_url(@pendidikan)
    assert_response :success
  end

  test "should update pendidikan" do
    patch pendidikan_url(@pendidikan), params: { pendidikan: { pendidikan_terakhir: @pendidikan.pendidikan_terakhir } }
    assert_redirected_to pendidikan_url(@pendidikan)
  end

  test "should destroy pendidikan" do
    assert_difference('Pendidikan.count', -1) do
      delete pendidikan_url(@pendidikan)
    end

    assert_redirected_to pendidikans_url
  end
end
