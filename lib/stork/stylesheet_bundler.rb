require 'sass'

module Stork
  class StylesheetBundler
    class << self
      def call(env)
        [200, {}, [bundle(env.params)]]
      end

      def bundle(params)
        Sass::Engine.new(File.open("#{Stork::Config.css_dir}/#{params[:package]}.scss", 'r').read, Stork::Config.sass_options).render
      end
    end
  end
end