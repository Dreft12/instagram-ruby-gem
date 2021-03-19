require 'instagram'
require 'json'
CALLBACK_URL = "https://www.mysaic.com/blog/welcome"
ACCESS_TOKEN = "IGQVJYd2ZA6Vmd6a29rZA3paOGlvalR0a1JyZAUJGdFNMYTVJamtzSmlXa2ZAvZAk9FbVVUbjItdVFDQnhSZAVlyZATgtOWJWZAjBkQTRoNF9PaVNNZAV9Xc25HMkxZAR1VUckRKTE9ieTE1bnRVQXg5ZAXE5WU82cgZDZD"
USER_ID = "17841401029556086"
class TestModule
    def test_instagram
      Instagram.configure do |config|
        config.client_id = "477430643265708"
        config.client_secret = "517e3f151ef851439a02087bb0a28b63"
      end

      @user = Instagram.client(:access_token => ACCESS_TOKEN)

      @paging_next = JSON.parse(@user.user_recent_media(USER_ID, nil, {'fields' => 'id,caption,media_type,media_url,thumbnail_url,username,timestamp'}))['paging']['next']

      p JSON.parse(@user.get_next_media(@paging_next, {'fields' => 'id,caption,media_type,media_url,thumbnail_url,username,timestamp'}))
    end
  end

c = TestModule.new
c.test_instagram