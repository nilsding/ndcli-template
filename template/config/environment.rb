ENV["ENVIRONMENT"] ||= "development"

require "bundler/setup"
Bundler.require(:default, ENV["ENVIRONMENT"].to_sym)

lib = File.expand_path("../../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "awesome_print"
require "pry"
AwesomePrint.pry!

require "$name$"
