#!/usr/bin/env ruby -w

# ruby-1.9.2-p0 
# rails >= 3.0.9

# in Terminal, after running > rails console, enter this require statement
##   $ require "./lib/words_counter.rb"
###  the Textual module included below is located in /apotomoing_sequencers/app/helpers/textual.rb
#### for any fibering methods to work, you must require the Fiber library, as shown below.
#### this file is under development, not all methods work yet .. use with care.

include Textual

# include Lexigram

# require "./lib/textual-fibering-methods.rb"

require 'fiber'

    # file_name allows you to name the file that conatains your data to be processed, using any method below
  def file_name
   #file_name = ("tmp/insert_anagrams.txt")
   #file_name = ("tmp/insert_externals.txt")
   #file_name = ("tmp/insert_internals.txt")
   #file_name = ("tmp/insert_internals_hash.txt")
   #file_name = ("tmp/insert_sexual_lines.txt")
    file_name = ("tmp/insert_words_list.txt")
   #file_name = ("../../Documents/20110731-research.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash_test.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines-015.txt")
  end

### the following methods are for processing one long string (raw_text) to LINES OF DATA
### raw_text read file_name into a string, adding the \n to each line ending 
  # > a = raw_text
  # > a.class => String
  def raw_text
    raw_text = File.read(file_name)
   #raw_text = File.read("tmp/insert_sexual_lines.txt")
   #raw_text = File.read("tmp/insert_internals_hash.txt")
  end

  # takes the raw_text string, downcases and splits it line by line (\n), storing new string in array
  # > a = lines_list
  # > a.class => Array
  def lines_list
    lines_list = raw_text.to_textual.split(/\n/)
  end
  
	  # takes the raw_text string, downcases and splits it word by word, storing new string in array
  def word_list
    word_list = raw_text.to_textual.split(/\W/)
  end
  
  # processes lines of words, returning an hash of words with the number of times each word has been used
  def count_frequency
	a = Time.now
	counts = Hash.new(0)    
	  for word in word_list
        counts[word.to_s.to_textual] += 1
      end
	b = Time.now
	p counts
    puts counts.keys
    p counts.values
    p counts.length
	counts.values.sum
	p "                       finish time = " + "#{b}"
    p "                       start time = " + "#{a}"
    p "                       total time = " + "#{b-a}"
	
   #calls in console
   #counts = count_frequency                              # 
   #sorted = counts.sort_by {|word, count| count}         # 
   #top_five = sorted.last(5)                             #
  end

  # incomplete code, not finished
  def count_words
    myhash = Hash.new(0)
    keys = myhash.keys
    values = myhash.values
    wordstotal = myhash.values.sum
    myhash = open(file_name).read
  end

  # process lines of text, and store each word and number of times it has been use, resulting in a hash
  def words_counter
    file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash_test.txt")
   #file_name = ("tmp/insert_internals_hash.txt")
    words = Fiber.new do
	  File.foreach(file_name) do |line|
	    line.scan(/\w+/) do |word|
		  Fiber.yield word
		 #Fiber.yield word.to_textual
		end
	  end
	end
    counts = Hash.new(0)
    while word = words.resume
      counts[word] += 1
    end
    counts.keys.sort.each { |k| print "#{k}:#{counts[k]}"}
  end



  def words_from_string(string)
    string.downcase.scan(/[\w'']+/)
  end

  def frequency_word_list
    raw_text = File.read(file_name)
    counts = Hash.new(0)
	word_list = raw_text.downcase.split(/\W/)
   #word_list = raw_text.downcase.scan(/[,''\s\'']+/)
   #word_list = raw_text.downcase.scan(/[\w'']+/)
   #word_list = words_from_string(raw_text)
      for word in word_list
        counts[word] += 1
      end
    counts
  end

### the following methods are for processing LINES OF DATA file_name
  # hashlines
  def do_it_hash
    #open(file_name).each {|x,y| x <=> x; puts x, y }
    #open(file_name).each {|x,y| x.downcase <=> x.downcase; puts x, y }
  end

  # lines
  def do_it_lines
    open(file_name).each {|x| p x; }
  end
