# encoding utf-8
require "rexml/document"

file_name = "#{__dir__}/account.xml"
file = File.new(file_name)
doc = REXML::Document.new(file)
card = Hash.new
puts <<~CARD
  #{doc.root.elements["full_name"].text}
  #{doc.root.elements["number"].text}, #{doc.root.elements["email"].text}
  #{doc.root.elements["info"].text}
CARD
