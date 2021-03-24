require 'instagram'
require 'json'
ACCESS_TOKEN_JORGE = "IGQVJWTjBvSXkzXzBZARl9HNnY5MnN5R0EzaE1XTUM3MkhFTEtGOEpkMmt3bmhjN25mNlJ0NEVGR0FnMkl0eGdiY0RrZAWJRS3REeGlqdlRRQzFzYnJiU0RQODVxRS1WX20wRkRmaUZAaaFBYMU1yNkFCRgZDZD"
ACCESS_TOKEN_SUSANA = "IGQVJXUDJOSHFKZAGFLeHNfaFp4MnV1ZADE3VTUtT0pSNTlpdHVBN3ZAhdThJaE1hemZAVVzlkNVQ4SGFqWGtTRHIyLWZArakV5Y0pNZAkt0RTRKaFVJdFhCZAUFZAVHZATTlhfTDR6amRxdTRzMEZAhZAEF2WnhjYQZDZD"
class TestModule
    def test_instagram
      Instagram.configure do |config|
        config.client_id = "477430643265708"
        config.client_secret = "517e3f151ef851439a02087bb0a28b63"
      end

      @user = Instagram.client(:access_token => ACCESS_TOKEN_JORGE)
      p @user.init_all_media_from_user
    end
  end

c = TestModule.new
c.test_instagram