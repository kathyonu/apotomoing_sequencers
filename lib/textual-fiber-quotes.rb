#!/usr/bin/env ruby -w

##  AN ORIGNIAL MASTER, DO NOT CHANGE ONE IOTA.
##  FILE NAME : /desideratus/apotomoing_sequencers/app/lib/textual-fiber-quotes.rb   < mysqlbranch : 20110805
## Run in Terminal in your app directory, $ rails c -s     : this will run the console in the sandbox, all changes will be rolled back on exit.
## Run in the console, this require statement > require "./lib/textual-fiber-quotes.rb"

  require './lib/sequencerings/lexigram.rb'
  require './lib/sequencerings/textual.rb'
  require './lib/sequencerings/textualfibers.rb'
  require 'fiber'

puts "textual-fiber-quotes.rb loaded"

    # file_name allows you to name the file that conatains your data to be processed, using any method below
  def file_name
    @file_name = ("tmp/insert_quotes.txt")
  end


    # solid_gold_code DO NOT CHANGE : 20101026
  def process_quotes
    File.open(file_name, "r") do |f|
      f.each_line do |line|
	  unless nil
        text, author, lifedates, description = line.split("\t")
          quote_textualed = text.to_textual
          author_textualed = author.to_textual
          lifedates_string = lifedates.to_s
          description_textualed = description.to_textual
          puts "#{quote_textualed}\t#{author_textualed}\t#{lifedates_string}\t#{description_textualed}"
	      end
		  sleep(1)
        end
      end
  end
