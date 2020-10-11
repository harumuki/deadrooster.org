# frozen_string_literal: true

# The module to extend from a Jekyll project according to Jekyll's docs.
module Jekyll
  # A tag handling {% soundcloud %}
  # Example: {% soundcloud 131830691 %}
  class SoundcloudTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @track_id = text
    end

    def render(_context)
      <<~RENDERED_HTML
        <div>
          <iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay"
            src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/#{@track_id}">
          </iframe>
        </div>
      RENDERED_HTML
    end
  end

  Liquid::Template.register_tag('soundcloud', Jekyll::SoundcloudTag)
end
