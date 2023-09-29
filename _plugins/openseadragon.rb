require 'jekyll'
require 'json'

module Jekyll
    class OpenSeadragonTag < Liquid::Tag

        def initialize(tag_name, input, tokens)
            super
            @input = input
        end

        def render(context)
            image = ""

            jdata = JSON.parse(@input)
            if( jdata.key?("image") )
                image = jdata["image"].strip
            end

            site = context.registers[:site]
            template_path = File.join Dir.pwd, "_includes", "openseadragon.html"
            template = File.read template_path
            template = (Liquid::Template.parse template).render site.site_payload.merge!({"image" => image})
        end
    end
end

Liquid::Template.register_tag('openseadragon', Jekyll::OpenSeadragonTag)