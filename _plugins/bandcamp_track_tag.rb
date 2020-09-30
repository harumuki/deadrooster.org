# frozen_string_literal: true

# The module to extend from a Jekyll project according to Jekyll's docs.
module Jekyll
  # A tag handling {% bandcamp_track album_id track_id %}
  # Example: {% bandcamp_track 6yt7RQR9MBtuCd3gjTuOuw 123456 %}
  class BandcampTrackTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      args = text.strip.split(' ', 2)

      raise 'Spotify tag usage: {% bandcamp_track album_id track_id %}' if args.count != 2

      @album_id = args[0]
      @track_id = args[1]
    end

    def render(_context)
      <<~RENDERED_HTML
        <div>
          <iframe style="border: 0; width: 100%; height: 120px;" src="https://bandcamp.com/EmbeddedPlayer/album=#{@album_id}/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/artwork=small/track=#{@track_id}/transparent=true/" seamless>
          </iframe>
        </div>
      RENDERED_HTML
    end
  end

  Liquid::Template.register_tag('bandcamp_track', Jekyll::BandcampTrackTag)
end
