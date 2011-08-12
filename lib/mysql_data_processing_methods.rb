#!/usr/bin/env ruby -w

# ruby-1.9.2-p0 
# rails >= 3.0.0

# in Terminal, after running > rails console, enter this require statement
##   $ require "./lib/mysql_data_processing_methods.rb"
###  the Textual module included below is located in /apotomoing_sequencers/app/helpers/textual.rb
#### for any fibering methods to work, you must require the Fiber library, as shown below.
#### this file is under development, not all methods work yet .. use with care.

include Textual
# include Lexigram

require "./lib/textual-fibering-methods.rb"
# require 'fiber'

    # file_name allows you to name the file that conatains your data to be processed, using any method below
  def file_name
   #file_name = ("tmp/insert_anagrams.txt")
   #file_name = ("tmp/insert_externals.txt")
   #file_name = ("tmp/insert_internals.txt")
   #file_name = ("../../Documents/20110731-research.txt")
    file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
  end

  def count_frequency(word_list)
    counts = Hash.new(0)
    for word in word_list
      counts[word] += 1
    end
    counts
  end

  def words_from_string(string)
    string.downcase.scan(/[\w'']+/)
  end

  def frequency_word_list
    raw_text = File.read(file_name)
    counts = Hash.new(0)
    word_list = raw_text.downcase.scan(/[\w'']+/)
   #word_list = words_from_string(raw_text)
      for word in word_list
        counts[word] += 1
      end
    counts
  end

# counts = count_frequency(word_list)
# sorted = counts.sort_by {|word, count| count}
# top_five = sorted.last(5)



  def do_it
    open(file_name).each {|x| p x; sleep(1) }
  end
	