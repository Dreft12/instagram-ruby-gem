require 'instagram'
require 'json'
require 'time'
ACCESS_TOKEN_JORGE = "IGQVJWTjBvSXkzXzBZARl9HNnY5MnN5R0EzaE1XTUM3MkhFTEtGOEpkMmt3bmhjN25mNlJ0NEVGR0FnMkl0eGdiY0RrZAWJRS3REeGlqdlRRQzFzYnJiU0RQODVxRS1WX20wRkRmaUZAaaFBYMU1yNkFCRgZDZD"
ACCESS_TOKEN_SUSANA = "IGQVJXUDJOSHFKZAGFLeHNfaFp4MnV1ZADE3VTUtT0pSNTlpdHVBN3ZAhdThJaE1hemZAVVzlkNVQ4SGFqWGtTRHIyLWZArakV5Y0pNZAkt0RTRKaFVJdFhCZAUFZAVHZATTlhfTDR6amRxdTRzMEZAhZAEF2WnhjYQZDZD"
class TestModule
    def test_instagram
      Instagram.configure do |config|
        config.client_id = "477430643265708"
        config.client_secret = "517e3f151ef851439a02087bb0a28b63"
      end

      @user = Instagram.client(:access_token => ACCESS_TOKEN_JORGE)
      #@user.init_all_media_from_user.each_with_index do |item, index|

          p Time.at(Date.parse("2017-02-25T16:29:21+0000").to_time.to_i).utc.strftime("%m-%d-%YT%H:%M:%S%z")
          # p Time.at(Date.parse(item['timestamp']).to_time.to_i).utc.strftime("%d-%m-%YT%H:%M:%S%z")

      #end



    end
  end

c = TestModule.new
c.test_instagram