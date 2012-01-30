#!/usr/bin/env ruby -w
module Mysqldataprocessingphrases
 
 #include ApplicationHelper  # uncomment for use in conole
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console :
##      > require "./lib/mysqldataprocessingphrases.rb"
###     > doing_phrase commands below

   # file_name allows you to name the file that contains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("./tmp/database_doings/doing_phrases/insert_phrase_lines.txt")
  end

    # after_break is used at end of fiber method doing_phrase_lines to end process, and save the file addended to
	# to load the data produced by the fiber above use these commands in mysql console :
	# in Terminal $ cd ./desideratus/apotomoing_sequencers
	#    $ mysql
    #    mysql> use sequencers_production
	#    mysql> LOAD DATA LOCAL INFILE './tmp/database_doings/doing_phrases/phrases_ready_to_load.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at);
  def after_break
   #open(file_name, "r") do |f| 
    open("./tmp/database_doings/doing_phrases/phrases_ready_to_load.txt", "r") do |f| 
    g = f.read
    f.close
    exit(puts "Processing is complete >> ./tmp/database_doings/doing_phrases/phrases_ready_to_load.txt << is closed, console has been exited")
    end
  end
  
    # fiber 
	# this method processes lines in a file, line by line
	## outputing the processed data into another file
	### ready for entry into the database using the mysql LOAD command
  def doing_phrase_lines
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_phrases/phrases_ready_to_load.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_phrases/phrases_sorted.txt") do |line|
        queue = ""
        puts queue
        sequence_text = line.to_textual.de_comma
        sequence_creation = sequence_text.de_space unless nil
        sequence_complete = sequence_text.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze unless nil
        sequence_lense = ""
        description = ""
        reference = ""
        anagram = 0
        name = 0
        phrase = 1
        research = 0
        external = 0
        internal = 0
        created_at = "2011-12-12 12:12:00"
        line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{sequence_lense}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{created_at}\n"
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


    # the above evolved from the below
	# the above outputs data to another file
	# the below outsputs data to screen


    # SOLID GOLD CODE : do not change
    # generates all sequences
  def process_phrase_line
    file_name = "./tmp/database_doings/doing_phrases/phrases_sorted.txt"
    open(file_name) do |f|
      f.each do |line|
        sequence_text = line.to_textual.de_comma   
        sequence_creation = line.to_textual.de_comma.de_space
        sequence_complete = line.to_textual.de_comma.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze
        description = "meanings in nameings"
        reference = "code moniker in sequencer app"
        anagram = 0
        name = 0
        phrase = 1
        research = 0
        external = 0
        internal = 0
        p "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{Time.now}"
      end
    end
  end

    # this method processes the result into a second file
  def doing_phrases_file_decomma
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_phrases/mysql_history_001.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_phrases/phrases_sorted.txt") do |line| 
        queue = ""
        puts queue
       #sequence_text = line.to_textual.de_comma
        sequence_text = line.to_textual
        queue << "#{sequence_text}\n"
        break unless line
        consumer.transfer queue
        queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

    # doing_extract_data processes the hash line by line, extracting only the sequence_text, processing it into another file
  def doing_extract_data
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_phrases/phrases_ready_to_load.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_phrases/phrases_sorted.txt") do |line| 
        queue = ""
        puts queue
        sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at = line.split("\t")
        extracted_data = sequence_text.to_textual
        queue << "#{extracted_data}\n"
        break unless line
        consumer.transfer queue
        queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end



    # needs to be tested : 20111116
    # this method sorts and uniques any sized file
	# processing the result into a second file
  def doing_phrases_file_sort_and_unique
    a = File.readlines("./tmp/database_doings/doing_phrases/phrases_sorted.txt")
    @megadeta = a.sort do |x,y|
      x.downcase <=> y.downcase
    end
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_phrases/phrases_ready_to_load.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      queue = ""
      puts queue
	  @megadata_unique = @megadata.uniq
      queue << "#{@megadata_unique}"
      break unless @megadata_uniq
      consumer.transfer queue
      queue.clear
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

    # this method reads file in one gulp then runs the sort and then the uniq on it
    # this method outputs to screen
	# if you have a large file, use the fiber method : doing_phrases_file_sort_and_unique
  def array_to_unique
    a = File.readline("./tmp/database_doings/doing_phrases/phrases_to_sort.txt")
    b = a.sort
    c = b.uniq
    while d = c.shift
    puts d unless nil?
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
  end                                                          # a tiny example of the power of the to_textual

end
