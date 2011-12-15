#!/usr/bin/env ruby -w
module Mysqldataprocessinganagrams
 
  include ApplicationHelper  # uncomment for use in conole
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

  # USAGE : the require statement in console, then the method command
  ##      > require "./lib/mysqldataprocessinganagrams.rb"
  ###     > doing_anagram_lines
  #### that command runs the fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("tmp/insert_anagrams.txt")
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

    # fiber : doing_anagram_hash : solid gold : 20111114
    # this method processes the anagram file that contains a hash of its text with its singular sequence,
    ## outputing the processed data into another file
  def doing_anagram_hash
   consumer = Fiber.new do |producer, queue|
      f = open("./tmp/insert_anagrams_hash.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/insert_anagrams.txt") do |line| 
      queue = ""
      puts queue
      anagram_sequence, anagram = line.split("\t")
      @anagram = anagram.to_textual
      line = "#{anagram}\n"
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

    # fiber : doing_anagram_lines : solid gold : 20111114
    # this method processes the anagram file that contains a hash of its text with its singular sequence,
    ## outputing the processed data into another file, now ready 
    ### for entry into the database using the mysql LOAD command
    #### see the after_break method below for mysql load instructions
  def doing_anagram_lines
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_dones/insert_anagrams_lines-mysql-01.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_dones/insert_anagrams.txt") do |line| 
     #IO.foreach("./lib/databasers/fibered_files_input.txt") do |line|
     #IO.foreach("./lib/databasers/fibered_files_input.txt") do |line|
     #IO.foreach("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt") do |line|
     #IO.foreach("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-012.txt") do |line|
        queue = ""
        puts queue
        text = line.chomp
        anagram = text.to_textual
        sequence_text = anagram.to_textual.de_comma unless nil
        sequence_creation = sequence_text.de_comma.de_space unless nil
        sequence_complete = sequence_creation.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze unless nil
		sequence_lense = ''
        description = "English"
        reference = "word list"
        anagram = 1
        name = 0
        phrase = 0
        sexualities = 0
        external = 0
        internal = 0
        created_at = "2011-12-12 12:12:00"
        line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{sequence_lense}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{created_at}\n"
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

    # after_break is used at end of fiber method doing_anagram_lines to end process, and save the file addended to
    # to load the data produced by the fiber above use these commands in mysql console :
    # in Terminal $ cd ./desideratus/apotomoing_sequencers
    #    $ mysql
    #    mysql> use sequencers_production
    #    mysql> LOAD DATA LOCAL INFILE './tmp/insert_anagrams_hash.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, description, reference, anagram, name, phrase, research, external, internal, created_at);
  def after_break
    open("./tmp/databse_dones/insert_anagrams_lines-mysql-01.txt", "r") do |f| 
    g = f.read
   #puts g    # uncommenting this line line causes each line of data to show on your screen as it is output to the file
    f.close
   end
    exit(puts "Processing is complete >> ./tmp/insert_anagrams_lines-mysql-01.txt << is closed, console has been exited")
  end

    # outsputs to screen : processes anagram hash, such as :
    ## { :acders=>"sacred", :acders=>"scared", :e-cards=>"e-cards" }
    ### outputting only the values, after they have been run through the String.to_textual method, then the five sequencers.
  def process_anagrams_hash_to_sequences
    open(file_name) do |f|
      f.each do |line|
        anagram_sequenced, anagram = line.split("\t")
        anagram_text = anagram.to_textual
        sequence_text = anagram_text.to_textual.de_comma unless nil
        sequence_creation = sequence_text.de_comma.de_space unless nil
        sequence_complete = sequence_creation.split(//).sort.join('') unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze unless nil
        description = "English"
        reference = "words list"
        anagram = 1
        name = 0
        phrase = 0
        sexualities = 0
        external = 0
        internal = 0
        puts "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{Time.now}\n"
      end
    end
  end

    # SOLID_GOLD_CODE DO NOT CHANGE : 20111117
    # outsputs to screen : processes anagram hashes to extract just the anagram, no other data
  def process_anagrams_hash_no_sequences
    open(file_name) do |f|
      f.each do |line|
        anagram_sequenced, anagram = line.split("\t")
        if anagram != nil
          @line = anagram.to_textual
          puts "#{@line}\n" unless nil
        end
      end
    end
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
