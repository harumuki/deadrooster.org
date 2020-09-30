# frozen_string_literal: true

# The module to extend from a Jekyll project according to Jekyll's docs.
module Jekyll
  # A tag handling {% spotify_track track_id %}
  # Example: {% spotify_track 6yt7RQR9MBtuCd3gjTuOuw %}
  class SpotifyTrackTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @track_id = text
    end

    def render(_context)
      <<~RENDERED_HTML
        <div>
          <iframe src="https://open.spotify.com/embed/track/#{@track_id}" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
        </div>
      RENDERED_HTML
    end
  end

  Liquid::Template.register_tag('spotify_track', Jekyll::SpotifyTrackTag)
end
