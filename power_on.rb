# frozen_string_literal: true

require "optparse"
require "wol"

options = {}
OptionParser.new do |opt|
  opt.on("-m", "--mac MAC", "mac address") { |o| options[:mac] = o || ENV['MAC'] }
  opt.on("-a", "--address ADDRESS", "IP or domain") { |o| options[:address] = o || ENV['ADDRESS']}
  opt.on("-p", "--port PORT", "port") { |o| options[:port] = o || ENV['PORT'] }
end.parse!

result = Wol::WakeOnLan.new(options).wake
STDOUT.puts(result)