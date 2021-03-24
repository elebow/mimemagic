# frozen_string_literal: true

require "mkmf"
require "net/http"

if with_config("download-freedesktop-database")
  puts "downloading freedesktop.org database"
  open("#{__dir__}/../../freedesktop.org.xml", "w") do |outfile|
    outfile.write Net::HTTP.get("TODO_HOSTNAME", "TODO_REMOTE_PATH") # TODO
  end
  puts "done"
end
$makefile_created = true
