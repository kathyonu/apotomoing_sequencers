#!/usr/bin/env ruby -w

# ruby-1.9.2-p0 
# rails >= 3.0.9

# in Terminal, after running > rails console, enter this require statement
##   $ require "./lib/words_profiler.rb"
###  the Textual module included below is located in /apotomoing_sequencers/app/helpers/textual.rb
#### for any fibering methods to work, you must require the Fiber library, as shown below.
#### this file is under development, not all methods work yet .. use with care.

include Textual

# include Lexigram

require 'profile'

require "./lib/textual-fibering-methods.rb"

  def nines
    count = 0
    string = open("tmp/insert_sexual_lines.txt").read
	words = string.split(/\n/)
	while word = words.pop
      word = word.to_s
	  if word.length == 9
	    count += 1
	  else
	    count = count
      end
    end
    puts "There are #{count} nine letter words"
  end

  # process a file of lines of data, each line is processed using String#to_textual
  def line_processor
    open("tmp/insert_sexual_lines.txt") do |f|
      f.each do |line| 
        unless line =~ /^$/
          puts line.to_s.to_textual
      end
    end
  end
  
end
