# frozen_string_literal: true

module Jekyll
  module Converters
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
  end
end
