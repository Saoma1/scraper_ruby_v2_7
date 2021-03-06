require "test_helper"

class TorrentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @torrent = torrents(:one)
  end

  test "should get index" do
    get torrents_url
    assert_response :success
  end

  test "should get new" do
    get new_torrent_url
    assert_response :success
  end

  test "should create torrent" do
    assert_difference('Torrent.count') do
      post torrents_url, params: { torrent: { main: @torrent.main, relase_year: @torrent.relase_year, title: @torrent.title, url: @torrent.url } }
    end

    assert_redirected_to torrent_url(Torrent.last)
  end

  test "should show torrent" do
    get torrent_url(@torrent)
    assert_response :success
  end

  test "should get edit" do
    get edit_torrent_url(@torrent)
    assert_response :success
  end

  test "should update torrent" do
    patch torrent_url(@torrent), params: { torrent: { main: @torrent.main, relase_year: @torrent.relase_year, title: @torrent.title, url: @torrent.url } }
    assert_redirected_to torrent_url(@torrent)
  end

  test "should destroy torrent" do
    assert_difference('Torrent.count', -1) do
      delete torrent_url(@torrent)
    end

    assert_redirected_to torrents_url
  end
end
