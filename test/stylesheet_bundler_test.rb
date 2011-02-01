require 'test_helper'

class StylesheetBundlerTest < Test::Unit::TestCase
  def setup
    @fixtures_path = File.expand_path('../fixtures/', __FILE__)
    Stork::Config.css_dir = @fixtures_path
  end

  def test_bundle_returns_compiled_scss_with_default_options
    compiled_sass = compile_scss File.join(@fixtures_path, 'stylesheet.scss'), Stork::Config.sass_options
    assert_equal compiled_sass, Stork::StylesheetBundler.bundle(:package => 'stylesheet')
  end
end
