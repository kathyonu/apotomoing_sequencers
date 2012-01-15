#!/usr/bin/env ruby -w
module Mysqldataprocessingmethods

# ruby-1.9.2-p0 
# rails >= 3.0.x  : currently at 3.0.10

# in Terminal, after running $ rails console, enter this require statement
##   $ require "./lib/mysql_data_processing_methods.rb"
### for any fibering methods to work, you must require the Fiber library, as shown below.
#### this file is under development, not all methods work yet .. use with care.

#  require 'lexigram'
#  require 'textual'
#  require './lib/sequencerings/textualfibers.rb'
#### these above shouldn't be needed 
#### test that when i need this again

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

  # sorts the file, using downcase
  def sorting_file
    a = File.readlines(file_name)
    a.sort do |x,y|
      x.downcase <=> y.downcase
    end
  end

  # simple output of lines of a file 
  def do_it_lines
    open(file_name).each {|x| p x; }
  end
  
  # string to words in array
  def words_from_string(string)                                # string = "this is a five worder"
    string.downcase.scan(/[\w'']+/)                            # => ["this", "is", "a", "five", "worder"]
  end

  # string processed through String#to_textual then scanned    # note the 5 in the string becomes a five
  def list_it(string)                                          # string = "this is a 5 worder"
    string.to_textual.scan(/[\w'']+/)                          # => ["this", "is", "a", "five", "worder"]
  end                                            # a tiny example of the power of the to_textual method
 
  def run_file
    IO.foreach("./lib/the_input.txt") { |line| puts line.to_textual } 
  end

  def write_file
    open("./lib/the_output.txt", "a") do |f|
      IO.foreach("./lib/the_input.txt") do |line|
	    if line =~ line.empty?
		break
		else
		new_line = line.to_textual_id do |puts|
          puts(f << "#{new_line}")
          end 
		end
      end
    end
  end
