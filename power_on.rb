#!/usr/bin/env ruby
# frozen_string_literal: true

require "optparse"
require "wol"

options = {
  mac: ENV['MAC'],
  address: ENV['ADDRESS'],
  port: ENV['PORT']
}

parser = OptionParser.new do |opt|
  opt.on("-m", "--mac MAC", "mac address") { |o| options[:mac] = o }
  opt.on("-a", "--address ADDRESS", "IP or domain") { |o| options[:address] = o }
  opt.on("-p", "--port PORT", "port") { |o| options[:port] = o }
end
parser.parse!

result = Wol::WakeOnLan.new(options).wake
STDOUT.puts(result)