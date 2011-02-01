module Stork
  class Config
    @@css_dir = nil
    @@syntax  = nil
    @@style   = nil

    class << self
      def css_dir
        @@css_dir
      end

      def css_dir=(css_dir)
        @@css_dir = css_dir
      end

      def syntax
        @@syntax || :scss
      end

      def syntax=(syntax)
        @@syntax = syntax
      end

      def style
        @@style || :compressed
      end

      def style=(style)
        @@style = style
      end

      def sass_options
        {
          :syntax     => syntax,
          :style      => style,
          :load_paths => Dir.glob("#{css_dir}/**/*.scss").collect { |f| f.gsub(/\/\w+.scss/, '') }
        }
      end
    end
  end
end
