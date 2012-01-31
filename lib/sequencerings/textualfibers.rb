#!/usr/bin/env ruby -w
module Textualfibers
 
# this file's methods are not used in the program : i used this for storing methods
# please see the /lib/mysqldatabase***.rb files for the most evolved fibers

 
# include ApplicationHelper  # uncomment for use in conole
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# DESCRIPTION : many methods to process text from files, line by line
## through the String#to_textual method, and
### through the five sequencers using the ie. lexigram_sequencer(sequencetext)
#### through the mysql pre-processing for entry into database
###### example : "./lib/mysql_data_processing_anagrams.rb"   : our English words table, the English lexicon of words, sequenced
###### example : "./lib/mysql_data_processing_names.rb"      : our English names table, the English lexicon of names, 
###### example : "./lib/mysql_data_processing_phrases.rb"    : our English phrases table, say it in English ? it is a phrase

# USAGE : in Terminal, after running $ rails c -s            : this opens rails console in the sandbox
## then enter this require statement :
###   require './lib/sequencerings/textualfibers.rb'

# for the fibering methods to work, you must require the Fiber library, as shown above.
# this file is under development, not all methods work yet .. use with care.

# this puts below is for use in console, not development, nor production
# uncomment puts to show on console this module is loaded.
  puts "Textualfibers has been directly included"

# ruby-1.9.2-p0 
# rails <3.1

# the method named  lexigram_sequencer(sequencetext) has been moved to : lib/lexigram.rb

    # file_name method allows you to name the file that conatains your data to be processed, using any appropriate method below
  def file_name
    file_name = ("tmp/insert_externals.txt")
   #file_name = ("tmp/insert_internals.txt")
   #file_name = ("./tmp/insert_internals_hash.txt")
   #file_name = ("lib/anagrams/anagrams_table_data.txt")
   #file_name = ("tmp/insert_anagrams.txt")
   #file_name = ("tmp/insert_word_list.txt")
   #file_name = ("../../Documents/20110421-research_textualed.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines_sorted_keys-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines_sorted_values-015.txt")
  end
  
  # for the working code see app/public/javascripts/all.js amd almost_ready.js
  ## i leave this here for my own historical reasons : 20111113
  ###
  #### 20110819 below CODE IS NOT WORKING
  # using file_name as its data source, this working code will produce full text from lines of data and their sequences.
  # last valid use of this code was converting both the key and the value to text, then joining them as one 'keyvalue'
  # the key held the words used in millions of sentences, the value gave the number of times the words is used in 184,405 lines of phrases.
  #def process_research_sequences
  #  namesplit = []
  # #open("tmp/insert_internals_hash.txt") do |f|
  #  open(file_name) do |f|
  #    f.each_line do |line|
  #      sequence_text = (line.to_textual).de_comma
  #      sequence_creation = (line.to_textual).de_comma.de_space
  #      sequence_complete = ((line.to_textual).de_comma).split(//).sort.join('').strip
  #     #sequence_lexigram = (line.to_textual).de_comma do |seq| namesplit << seq.split()   # this working code is NOT the Lexigram sequence.
  #      namelength = namesplit.length
  #        if namelength > 0; first = namesplit.shift.split(//).to_histogram end
  #        if namelength > 0; second = namesplit.shift.split(//).to_histogram end
  #        if namelength > 0; third = namesplit.shift.split(//).to_histogram end
  #        if namelength > 0; fourth = namesplit.shift.split(//).to_histogram end
  #        if namelength > 0; fifth = namesplit.shift.split(//).to_histogram end
  #        first_run = first.merge(second) {|key, first, second| (first > second)? first : second }
  #        second_run = second.merge(first_run) {|key, first, second| (first > second)? first : second }
  #        third_run = third.merge(second_run) {|key, first, second| (first > second)? first : second }
  #        fourth_run = fourth.merge(third_run) {|key, first, second| (first > second)? first : second }
  #        fifth_run = fifth.merge(fourth_run) {|key, first, second| (first > second)? first : second }
  #        string = (fifth_run.map { |k,v| k*v }).join
  #        sequence_lexigram = string.split(//).sort.join("")
  #      end
  #      sequence_singular = sequence_complete.squeeze
  #      puts "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}"
  #      #sleep(1)
  #    end
  #  end
  ## same goes for much of this code commented out : i leave it for historical reasons : 20111113

    # solid_gold_code DO NOT CHANGE : 20101026
  def process_anagrams_lines
    File.open("tmp/insert_anagrams.txt", "r") do |f|
   #File.open(file_name, "r") do |f|
   #File.open("./lib/anagrams/anagrams_table_data.txt", "r") do |f|
      f.each_line do |line|
        puts line.to_textual
        sleep(0.01)
       #created_sequence_id = external_searched(/continue code/)
       #creation_sequence_id = 
       #complete_sequence_id = 
       #lexigram_sequence_id = 
       #singular_sequence_id = complete_sequence_id.squeeze
      end
    end
  end

    # unproven as yet
  def processing_anagrams
    File.open("tmp/insert_anagrams.txt", "r") do |f|
   #File.open(file_name, "r") do |f|
   #File.open("./lib/anagrams/anagrams_table_data.txt", "r") do |f|
      f.each_line do |line|
        anagram = line.chomp 
         #loop do |anagram|
         #  sequence_created = anagram.to_textual 
         #  sequence_creation = anagram.to_textual.gsub(/\s/, "")
         #  sequence_complete = anagram.to_textual.split(//).sort.join("") #.strip
         #  sequence_lexigram = anagram.to_textual.split(//).sort.join("").strip.reverse # placeholder on lexigram sequence
         #  sequence_singular = anagram.to_textual.split(//).sort.join("").strip.squeeze  # same as : sequence_singular = sequence_complete.squeeze
        puts anagram.to_textual
         #  end
      end
    end
  end

 
    # solid_gold_code DO NOT CHANGE : 20101026
  def process_externals
    File.open("./lib/externals/externals_table_data_input_hash.txt", "r") do |f|
   #File.open("./lib/externals/externals_table_data_input_lines.txt", "r") do |f|
      f.each_line do |line|
        external_searched, searched = line.chomp.split("\t")
       # created_sequence_id = external_searched(/continue code/)
       # creation_sequence_id = 
       # complete_sequence_id = 
       # lexigram_sequence_id = 
       # singular_sequence_id = complete_sequence_id.squeeze
        puts "#{external_searched.to_textual}\t#{searched}" 
        sleep(0.01)
      end
    end
  end

    # solid_gold_code DO NOT CHANGE : 20101026
  def process_externals_hash
    File.open("./lib/externals/externals_table_data_input_hash.txt", "r") do |f|
      f.each_line do |line|
        external_searched, searched = line.chomp.split("\t")
       # created_sequence_id = external_searched(/continue code/)
       # creation_sequence_id = 
       # complete_sequence_id = 
       # lexigram_sequence_id = 
       # singular_sequence_id = complete_sequence_id.squeeze
        puts "#{external_searched.to_textual}\t#{searched}" 
        sleep(0.01)
      end
    end
  end

    # solid_gold_code DO NOT CHANGE : 20101026

  def process_externals_lines
    File.open(file_name, "r") do |f|
    #File.open("./lib/externals/externals_table_data_input_lines.txt", "r") do |f|
      f.each_line do |line|
        puts line.to_textual
        sleep(0.01)
      end
    end
  end

    # solid_gold_code DO NOT CHANGE : 20101026
    # processes raw text in the #file_name method (see above) to new lines cleansed of all punctuations and such.
    # printout is only onto screen
  def strings_to_lines_textualed
    strings = File.read(file_name)
    strings.extend Textual
    new = strings.to_textual
  end

    # solid_gold_code DO NOT CHANGE : 20101026
    # my favorite as it allows me to make sure all line lengths are less than 255 characters, visually, on the screen
  def sort_by_line_length
    a = File.readlines(file_name)
    a.sort do |x,y|
      (y.downcase.length <=> x.downcase.length)
    end
  end

    # by_line_length method read a file and show all lines that is equal or longer than 250 characters
  def by_line_length
    a = File.readlines(file_name)
    while b = a.shift
      puts b if b.length >= 250
    end
  end

    # processes the file_name data to screen, using the homegrow method #to_textual which is in the 'include Textual' statement.
    # textual.rb resides in /app/helpers/textual.rb
  def humongous_sort
    list = File.readlines(file_name)
    full_list = list.sort_by { |x| x.downcase }
  end

    # mysql_lines processes each line of a file,
    # from this  : begin stories
    # to this    : ('begin stories')
  def mysql_lines
    File.open(file_name, "r") do |line|
   #File.open('./lib/databasers/fibered_files_output.txt') do |line|
      line.each do |x|
        puts "('" + "#{x.strip}" + "')"
      end
    end
  end

    # TODO : add description to this fiber : lib/mysql_data_processing_externals.rb for how this is used : 20111114
  def doing_textuals
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/insert_internals.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          f.puts << queue
          queue.clear
        end
        raise StopIteration
      end
      end
    producer = Fiber.new do |consumer, queue|
        list = File.readlines(file_name)
        list = File.readlines("./lib/anagrams/anagrams_table_data.txt")
       #list = File.readlines("./lib/anagrams/anagrams_table_data.txt")
        full_list = list.sort_by { |x| x.downcase }
       #b = IO.readlines(file_name)
       #b = IO.readlines(ARGV)
       #b = IO.readlines("./lib/the_input.txt")
        loop do
          while a = full_list.shift
            queue = a.to_textual unless nil
            consumer.transfer queue
            queue.clear
          end
          raise StopIteration
        end
      end
    consumer.transfer(producer, [])
    after_break
  end
  
    # character_split will take a file and split it at the character level, so it can be sorted, and the odd characters found
  def character_split
    full_string = File.read(file_name)
    full_string.each_line do |line|
      puts line.each_char { |c| puts c, "/n " }
    end
  end  
  
    # test this puppy, make sure it works
  def unique
   list = File.readlines(file_name)
   full_list = list.sort_by { |x| x.to_textual }
   #uniques = full_list.uniq
   uniques = full_list.uniq
   puts uniques
  end

    # sorts the file_name, it does not unique it
  def un_unique
   list = File.readlines(file_name)
   full_list = list.sort_by { |x| x }
   full_list.uniq
  end

    # reads file in one gulp then runs the sort and then the uniq on it.
  def array_to_unique
    a = File.readlines(file_name)
    b = a.sort
    c = b.uniq
    while d = c.shift
    puts d.to_textual unless nil?
  end
  end

  def array_to_uniqued
    a = File.readlines(file_name)
    puts a.uniq
  end

  def textuals
    list = File.readlines(file_name)
    #full_list = list.sort_by { |x| x.downcase.to_textual }   # << causes nils to occur
    full_list = list.sort_by { |x| x.downcase }
      while a = full_list.shift
        puts a.to_textual unless nil? 
     end
  end

    # processes the file_name data to screen, using the homegrown method #to_textual which is in the 'include Textual' statement.
    # textual.rb resides in /lib/textual.rb
  def textualed
    list = File.readlines(file_name)
    full_list = list.sort_by { |x| x.downcase }
      while a = full_list.shift
        puts a unless nil? 
     end
  end  

  def sorting_file
    a = File.readlines(file_name)
    a.sort do |x,y|
      x.downcase <=> y.downcase
    end
  end
  
    # sort_array makes no allowances for .downcase as it is an array, not string, therefore is kinda useless.
  def sort_array
    a = File.readlines(file_name)
    b = a.sort
  end

    # sort_file works, with to_textual
    ## ABSOLUTELY DO NOT CHANGE
    ### use copy and paste to change or add to this method
  def sort_file
    File.open(file_name) do |line|
      line.each do |x|
        puts "#{x.to_textual}"
      end
    end
  end

    # sort_temp works, with to_textual
    ## ABSOLUTELY DO NOT CHANGE
    ### use copy and paste to change or add to this method
  def sort_temp
    open(file_name) do |line|
    #File.open("../database_runs/temp-sort.txt", "r") do |line|
      line.each_with_index do |i,x|
       #puts "#{x}" + "#{i.to_textual}"
        puts "#{x}"
      end
    end
  end

    # the after_break method is run as the last action in fibers, after the doing_* methods,
    ## so as to terminate the doing method,
    ### and to refresh the ./lib/fiber_output.txt file, thereby saving the doing results.
  def after_break
    #open("./lib/fiber_output.txt", "r") do |f| 
    #open("./lib/databasers/fibered_files_output.txt", "r") do |f| 
    open("./lib/databasers/fibering_files_output.txt", "r") do |f| 
      g = f.read
     # puts g
     # uncommenting above line causes each line of data to show on your screen as it is output to the file
      f.close
    end
      exit(puts "fibering_files_output.txt" + " is closed, console has been exited")
  end

    # Note regarding the method, String#doing_array
    # in doing_array we attach the String#to_textual method to process the line with textual.rb
    # the doing_array method is run as a one word command at the console
    ## the doing_array method will create two fibers and
    ### the means to transfer the data between the two, so that one fiber will 
    #### gather data from the input file, and process it in any way we tell it 
    ##### then feed that changed data to the second fiber for entry into the output file.
    ###### change the String#file_name method above to your file name(s), and 
    ####### that's all you need do to adapt this code to your instant use.
    ######## \/ this is the code line that processes the changes in every line passing through the consumer fiber
    ######## var = queue.to_s.chomp.to_textual
  def doing_array
    consumer = Fiber.new do |producer, queue|
     #f = open("./lib/fiber_output.txt", "a") do |f|
     #f = open("./lib/files_to_textual/fibering_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibered_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibered_files_output.txt", "a") do |f| 
      a = open("./lib/databasers/fibering_files_output.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
            #puts queue
            #puts "queue : " + "#{queue}"
            #puts queue
            #puts queue.to_s
            #puts queue.to_s.chomp
            #puts queue.to_s.strip
            #puts queue.to_s.strip.downcase
            #puts queue.to_s.strip.downcase.to_textual
          a << f << queue.to_s.chomp.to_textual
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      b = IO.readlines("./lib/databasers/fibered_files_input.txt")
     #b = IO.readlines(file_name)
     #b = IO.readlines(ARGV)
     #b = IO.readlines("./lib/the_input.txt")
      loop do
        while queue = b.shift
          consumer.transfer queue
          queue.clear
        end
        raise StopIteration
      end
    end
    consumer.transfer(producer, [])
    after_break
  end
  
    # Note regarding the method, String#doing_by_line_length
    # in doing_array_by_line_length we attach the String#to_textual method to process the line with textual.rb
    # the doing_array_by_line_length method is run as a one word command at the console
    ## the doing_array_by_line_length method will create two fibers and
    ### the means to transfer the data between the two, so that one fiber will 
    #### gather data from the input file, and process it in any way we tell it 
    ##### then feed that changed data to the second fiber for entry into the output file.
    ###### change the String#file_name method above to your file name(s), and 
    ####### that's all you need do to adapt this code to your instant use.
    ######## \/ this is the code line that processes the changes in every line passing through the consumer fiber
    ######## var = queue.to_s.chomp.to_textual
  def doing_by_line_length
    consumer = Fiber.new do |producer, queue|
     #f = open("./lib/fiber_output.txt", "a") do |f|
     #f = open("./lib/files_to_textual/fibering_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibered_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibered_files_output.txt", "a") do |f| 
      f = open("./lib/databasers/fibering_files_output.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
            #puts queue
            #puts "queue : " + "#{queue}"
            #puts queue
            #puts queue.to_s
            #puts queue.to_s.chomp
            #puts queue.to_s.strip
            #puts queue.to_s.strip.downcase
            #puts queue.to_s.strip.downcase.to_textual
            var << queue.to_s.chomp.to_textual
            puts f << var
           #puts f << queue << var
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      a = File.read(file_name) do |a|
        b = a.to_textual
          loop do
            while value = b.shift
              queue << value
            end
            consumer.transfer queue
            queue.clear
            end
            raise StopIteration
         end
      end
    consumer.transfer(producer, [])
    after_break
  end
  
  def doing_strings
    consumer = Fiber.new do |producer, queue|
      f = open("./lib/databasers/fibered_files_output.txt", "a") do |f| 
     #f = open("./lib/fiber_output.txt", "a") do |f|
     #f = open("./lib/files_to_textual/fibering_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibered_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibering_files_output.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
           # puts queue
           # puts "queue : " + "#{queue}"
           # puts queue.class
           # puts queue.to_s
           # puts queue.to_s.chomp
           # puts queue.to_s.strip
           # puts queue.to_s.strip.downcase
           # puts queue.to_s.strip.downcase.to_textual
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./lib/databasers/fibered_files_input.txt") do |line|
      queue = ""
      puts queue
	    if "#{line.to_textual}" == nil?
          @line = "nil line not entered"
            queue << line
        else
          @line = "#{line.chomp.to_s.to_textual}"
            queue << line
          #puts queue
          consumer.transfer queue
          queue.clear
        end
        raise StopIteration
      end  
    end
    consumer.transfer(producer, [])
    after_break
  end 
  
    # TODO add description
  def fibering_files_hashless_output   # externals 
    consumer = Fiber.new do |producer, queue|
      f = File.open("./lib/databasers/fibered_files_input.txt", "a") do |f| 
        queue = "linezero"
        loop do
        queue = producer.transfer(consumer, queue)
          break unless queue
          f.puts << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      queue = "firststring"
      puts queue
      File.open("./lib/databasers/fibered_files_output.txt", "r") do |f| 
        loop do
         queue = f.each_line.to_textual
         #queue = f.each_line.to_s.chomp.to_textual
          break unless f
          consumer.transfer queue
          queue.clear
        end
        raise StopIteration
      end
    end
    consumer.transfer(producer, [])
    after_break
  end
  
    # processes a file, line by line, through String#.to_textual, generating the five sequences, then into the output file, for appending to it.
  def fibering_files_lines_output
#    include ApplicationHelper                        # uncomment for console use
#    require './lib/sequencerings/textualfibers.rb'   # uncomment for console use
#    include Textualfibers                            # uncomment for console use
    consumer = Fiber.new do |producer, queue|
      f = File.open("./lib/databasers/fibered_files_output.txt", "a") do |f|
      queue = "linezero"
        loop do
          queue = producer.transfer(consumer, queue)
          break unless queue
          f.puts << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      queue = "firststring"
      puts queue
      open("./tmp/insert_research_lines.txt", "r") do |f|
     #open("./tmp/insert_research_lines-02.txt", "r") do |f|
     #open("./lib/databasers/fibered_files_input.txt", "r") do |f|
        f.each do |line|
          sequence_text = line.to_textual.de_comma   
          sequence_creation = sequence_text.to_textual.de_comma.de_space
          sequence_complete = sequence_text.to_textual.de_comma.split(//).sort.join('').strip unless nil
          sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
          sequence_singular = sequence_complete.squeeze
          description = "research materials"
          reference = "net"
          anagram = 0
          name = 0
          phrase = 0
          research = 1
          external = 0
          internal = 0
          queue = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{Time.now}"
          break unless f
          consumer.transfer queue
          queue.clear
        end
        raise StopIteration
      end
    end
    consumer.transfer(producer, [])
    after_break
  end
  
end
