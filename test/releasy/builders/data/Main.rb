Dir[File.expand_path("../vendor/gems/*/lib", __FILE__)].each do |lib|
  $LOAD_PATH.unshift lib
end

OSX_EXECUTABLE_FOLDER = File.expand_path("../../..", __FILE__)

# Really hacky fudge-fix for something oddly missing in the .app.
class Encoding
  UTF_7 = UTF_16BE = UTF_16LE = UTF_32BE = UTF_32LE = Encoding.list.first
end

load 'application/bin/test_app'