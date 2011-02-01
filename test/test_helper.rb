require 'test/unit'
require 'sass'
require 'stork'

class Test::Unit::TestCase
  def compile_scss(path, options = {})
    Sass::Engine.new(File.open(path, 'r').read, options).render
  end
end
