#!/usr/bin/env ruby -w

# ruby-1.9.2-p0 
# rails >= 3.0.10

# in Terminal, after running > rails console, enter this require statement
#\   $ rails c -s           :: abbreviation for $ rails console -sandbox
##\  > require "./lib/mysqldataprocessingmethodshashes.rb"
###\ for any fibering methods to work, you must require the Fiber library, as shown below.
####\ this file is under development, not all methods work yet .. use with care.

  require 'lexigram'
  require 'textual'
  
# require 'fiber'

    # file_name allows you to name the file that conatains your data to be processed, using any method below
  def file_name
    file_name = ("tmp/insert_internals_hash.txt")
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

  # read a file, count the total number of each word use in the text.
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
  
  def counts
    counts = count_frequency(word_list)
  end

  def sorted
    sorted = counts.sort_by {|word, count| count}
  end
  
  def top_five
    top_five = sorted.last(5)
  end

  # hashlines
  def do_it_hash
    open(file_name).each {|x,y| x <=> x; puts x, y }
	#open(file_name).each {|x,y| x.downcase <=> x.downcase; puts x, y }
  end

  # lines
#  def do_it_lines
#    open(file_name).each {|x| p x; }
#  end

  def hashfile
    myhash = open(file_name).each {|x,y| x <=> x; puts x, y }
  end

  def hashdemo
    myhash = {"ruby on rails"=>2011010820110106, "apotomo"=>2011010820110106, "apotomo cells"=>2011010820110106, "apotonick"=>2011010820110106}
	 #myhash.keys                   # => ["ruby on rails", "apotomo", "apotomo cells", "apotonick"] 
     #myhash.values                 # => [2011010820110106, 2011010820110106, 2011010820110106, 2011010820110106] 
      a = myhash.values             # => [2011010820110106, 2011010820110106, 2011010820110106, 2011010820110106]
	  p total = myhash.values.sum   # => 8044043280440424 
      p total = total - a.pop       # => 6033032460330318 
      p total = total - a.pop       # => 4022021640220212 
      p total = total - a.pop       # => 2011010820110106 
      p total = total - a.pop       # => 0 
  end
