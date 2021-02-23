# frozen_string_literal: true
require "ruby-livescript"

module Jekyll
  module LiveScriptConverter
    class LiveScript < Converter
      safe true
      priority :low

      def setup
        require "ruby-livescript"
        @setup = true
      end

      def matches(ext)
        ext.casecmp(".ls").zero?
      end

      def output_ext(_ext)
        ".js"
      end

      def convert(content)
        setup unless @setup
        ::LiveScript.compile(content)
      end
    end
    module LiveScriptFilter
      def livescriptify(input)
        LiveScript.compile(input)
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::LiveScriptFilter)
