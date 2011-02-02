require 'sass'

module Stork
  class StylesheetBundler
    def call(env)
      status, headers, body = 200, {}, bundle(env.params)
    rescue
    ensure
      [status, headers, body]
    end

  private

    def bundle(params)
      Sass::Engine.new(File.open("#{Stork::Config.css_dir}/#{params['package']}.scss", 'r').read, Stork::Config.sass_options).render
    end
  end
end