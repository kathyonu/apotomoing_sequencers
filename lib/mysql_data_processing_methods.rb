#!/usr/bin/env ruby -w

# ruby-1.9.2-p0 
# rails >= 3.0.x  : currently at 3.0.10

# in Terminal, after running $ rails console, enter this require statement
##   $ require "./lib/mysql_data_processing_methods.rb"
###  the Textual module included below is located in /apotomoing_sequencers/app/helpers/textual.rb
#### for any fibering methods to work, you must require the Fiber library, as shown below.
#### this file is under development, not all methods work yet .. use with care.

include Textual
include Lexigram

require "./lib/textual-fibering-methods.rb"
# require 'fiber'  No fibers yet in this code

    # file_name allows you to name the file that conatains your data to be processed, using any method below
  def file_name
   #file_name = ("tmp/insert_anagrams.txt")
   #file_name = ("tmp/insert_externals.txt")
   #file_name = ("tmp/insert_internals.txt")
    file_name = ("tmp/insert_sexual_lines.txt")
   #file_name = ("tmp/insert_sexual_lines.txt")
   #file_name = ("../../Documents/20110731-research.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines-015.txt")
  end

  # lines 
  def do_it_lines
    open(file_name).each {|x| p x; }
  end
  
  # string to sentences to words to array
  def words_from_string(string)
    string.downcase.scan(/[\w'']+/)                            # => ["this", "is", "a", "five", "worder"]
  end


  def list_it
    y = string.downcase.scan(/[\w'']+/)
	w = lambda y.each {|x| p x.to_textual; }                   # use w.call
  end
 
 