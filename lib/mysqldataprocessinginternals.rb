#!/usr/bin/env ruby -w
module Mysqldataprocessinginternals
 
  include ApplicationHelper  # uncomment for use in console
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console, then the method command
##      > require "./lib/mysql_data_processing_internals.rb"
###     > doing_internal_lines
#### that command runs the fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("tmp/database_dones/insert_internals.txt")
   #file_name = ("tmp/insert_internals_hash.txt")
   #file_name = ("tmp/insert_sexual_lines.txt")
   #file_name = ("../../Documents/20110731-research.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines-015.txt")
  end

    # reads file in one gulp then runs the sort and then the uniq on it.
  def array_to_unique
    a = File.readlines(file_name)
    b = a.sort
    c = b.uniq
    while d = c.shift
    puts d unless nil?
   #puts d.to_textual unless nil?
  end
  end

    # fiber : doing_internal_lines : solid gold : 20111114
	# this method processes the internal searches hash file, line by line
	## outputing the processed data into another file
	### ready for entry into the database using the mysql LOAD command
	#### see the after_break method below for mysql load instructions
  def doing_internal_lines
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_dones/insert_internals_lines-mysql-01.txt", "a") do |f| 
     #f = open("./tmp/insert_internals_hash.txt", "a") do |f| 
     #f = open("./tmp/database_dones/insert_internals_hash.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_dones/insert_internals_hash.txt") do |line| 
     #IO.foreach("./tmp/insert_internals_hash.txt") do |line| 
     #IO.foreach("./lib/databasers/fibered_files_input.txt") do |line|
     #IO.foreach("./lib/databasers/fibered_files_input.txt") do |line|
     #IO.foreach("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt") do |line|
     #IO.foreach("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-012.txt") do |line|
      queue = ""
      puts queue
      internal_searched, searched = line.split("\t")
      internal_search = internal_searched.to_textual
      sequence_text = internal_search.to_textual.de_comma unless nil
      sequence_creation = sequence_text.de_comma.de_space unless nil
      sequence_complete = sequence_creation.split(//).sort.join('') unless nil
      sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
      sequence_singular = sequence_complete.squeeze unless nil
      description = "internal search"
      reference = searched.to_s.strip
      anagram = 0
      name = 0
      phrase = 0
      sexualities = 0
      external = 0
      internal = 1
      line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{Time.now}\n"
      queue << line
      break unless line
      consumer.transfer queue
      queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

    # after_break is used at end of fiber method doing_internal_lines to end process, and save the file addended to
	# to load the data produced by the fiber above use these commands in mysql console :
	# in Terminal $ cd ./desideratus/apotomoing_sequencers
	#    $ mysql
    #    mysql> use sequencers_production
	#    mysql> LOAD DATA LOCAL INFILE './tmp/insert_internals.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, description, reference, anagram, name, phrase, sexualities, external, internal, created_at);
  def after_break
    open("./tmp/database_dones/insert_internals_lines-mysql-01.txt", "r") do |f| 
    g = f.read
   #puts g    # uncommenting this line line causes each line of data to show on your screen as it is output to the file
    f.close
   end
    exit(puts "Processing is complete >> ./tmp/database_dones/insert_internals_lines-mysql-01.txt << is closed, console has been exited")
  end

    # SOLID_GOLD_CODE DO NOT CHANGE : 20101026
	# this code was fully completed : 20111112
    # outsputs to screen : processes internals hashes
	# all internal searches entered into production mysql on : 20111112
  def process_internals_hash
    open(file_name) do |f|
      f.each do |line|
      internal_searched, searched = line.split("\t")
      internal_search = internal_searched.to_textual
      sequence_text = internal_search.to_textual.de_comma unless nil
      sequence_creation = sequence_text.de_comma.de_space unless nil
      sequence_complete = sequence_creation.split(//).sort.join('') unless nil
      sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
      sequence_singular = sequence_complete.squeeze unless nil
      description = "internal search"
      reference = searched.to_s.strip
      anagram = 0
      name = 0
      phrase = 0
      sexualities = 0
      external = 0
      internal = 1
      puts "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{Time.now}\n"
      end
      end
    end

  def plucking_text_and_date_from_internals
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_dones/insert_internals_hash.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_dones/insert_internals_lines-mysql-01.txt") do |line| 
        queue = ""
        puts queue
        internal_searched, internal_creation, internal_complete, internal_lexigram, internal_singular, description, reference, anagram, name, phrase, sexualities, internal, external, created_at = line.split("\t")
        sequence_text = internal_searched.to_textual.de_comma unless nil
        reference = reference.to_s.strip
        line = "#{sequence_text}\t#{reference}\n"
        queue << line
        break unless line
        consumer.transfer queue
        queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
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
 
end
