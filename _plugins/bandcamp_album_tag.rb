# frozen_string_literal: true

# The module to extend from a Jekyll project according to Jekyll's docs.
module Jekyll
  # A tag handling {% bandcamp_album album_id %}
  # Example: {% bandcamp_album 6yt7RQR9MBtuCd3gjTuOuw %}
  class BandcampAlbumTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @album_id = text
    end

    def render(_context)
      <<~RENDERED_HTML
        <div>
          <iframe style="border: 0; width: 350px; height: 588px;" src="https://bandcamp.com/EmbeddedPlayer/album=#{@album_id}/size=large/bgcol=ffffff/linkcol=0687f5/transparent=true/" seamless>
          </iframe>
        </div>
      RENDERED_HTML
    end
  end

  Liquid::Template.register_tag('bandcamp_album', Jekyll::BandcampAlbumTag)
end
