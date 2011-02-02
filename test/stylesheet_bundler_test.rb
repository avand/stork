require 'test_helper'
require 'rack'

class StylesheetBundlerTest < Test::Unit::TestCase
  def setup
    @fixtures_path = File.expand_path('../fixtures/', __FILE__)
    Stork::Config.css_dir = @fixtures_path
  end

  def test_call_returns_successful_response
    r = Rack::Request.new Rack::MockRequest.env_for "/?package=stylesheet"
    response = Stork::StylesheetBundler.new.call r

    assert_equal 200, response[0]
    assert_equal({}, response[1])
    assert response[2].is_a?(String)
  end

  def test_bundle_returns_compiled_scss_with_default_options
    compiled_sass = compile_scss File.join(@fixtures_path, 'stylesheet.scss'), Stork::Config.sass_options
    assert_equal compiled_sass, Stork::StylesheetBundler.new.send(:bundle, 'package' => 'stylesheet')
  end
end
