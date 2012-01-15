#!/usr/bin/env ruby -w
module Mysqldataprocessingexternals
 
 #include ApplicationHelper  # uncomment for use in conole
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console, then the method command
##      > require "./lib/mysql_data_processing_externals.rb"
###     > doing_external_lines
#### that command runs the fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("./tmp/insert_externals.txt")
  end

    # after_break is used at end of fiber method doing_external_lines to end process, and save the file addended to
	# to load the data produced by the fiber above use these commands in mysql console :
	# in Terminal $ cd ./desideratus/apotomoing_sequencers
	#    $ mysql
    #    mysql> use sequencers_production
    #    mysql> LOAD DATA LOCAL INFILE './tmp/database_doings/doing_externals/insert_externals_hash_sorted.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at);
  def after_break
    open("./tmp/database_doings/doing_externals/insert_externals.txt", "r") do |f| 
    g = f.read
    f.close
    exit(puts "Processing is complete >> ./tmp/database_doings/doing_externals/insert_externals.txt << is closed, console has been exited")
    end
  end

    # this methods takes the file line by line, splitting the line into textdata tab datestring
    # $100 tab 201111115 [becomes this] one hundred dollars tab 20111115
    # then, the output file can be properly sorted
  def doing_textuals_on_raw_hashes
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_externals/insert_externals.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_externals/2011_external_searches.txt") do |line|
        queue = ""
        puts queue
        external_searched, searched = line.split("\t")
        sequence_text = external_searched.to_textual.de_comma unless nil
        sequence_creation = sequence_text.de_space unless nil
        sequence_complete = sequence_text.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze unless nil
        a = sequence_text.split(//).sort.join.strip.squeeze unless nil
        description = "#{a.count('aeiou')}".to_textual + " voweled" 
        reference = searched.to_s.strip
        anagram = 0
        name = 0
        phrase = 0
        research = 0
        external = 1
        internal = 0
        line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\n"
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

    # this method sorts any sized file
	# processing the result into a second file
  def doing_externals_file_sort
   #a = File.readlines("./tmp/insert_externals.txt")
   #a = File.readlines("./tmp/database_dones/insert_externals.txt")
    a = File.readlines("./tmp/db_eegimmnoss-gene_simmons.txt")
   #a = File.readlines("./tmp/database_dones/insert_externals_lines_mysql-01.txt")
    @line = a.sort do |x,y|
      x.downcase <=> y.downcase
    end
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_dones/insert_externals_sorted.txt", "a") do |f| 
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
      queue << "#{@line}"
        break unless @line
      consumer.transfer queue
      queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

    # reads file in one gulp then runs the sort and then the uniq on it.
  def array_to_unique
    a = File.readlines("./tmp/insert_externals.txt")
   #a = File.readlines(file_name)
    b = a.sort
    c = b.uniq
    while d = c.shift
    puts d unless nil?
   #puts d.to_textual unless nil?
  end
  end

    # fiber : doing_external_lines : solid gold : 20111114
	# this method processes the external searches hash file, line by line
	## outputing the processed data into another file ready for 
	### entry into the database using the mysql LOAD command
	#### see the after_break method below for mysql load instructions
  def doing_external_lines
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_externals/insert_externals_hash.txt", "a") do |f| 
     #f = open("./tmp/database_dones/insert_externals_lines-mysql-01.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/insert_externals_hash.txt") do |line| 
        queue = ""
        puts queue
        external_searched, searched = line.split("\t")
        external_search = external_searched.to_textual unless nil
        sequence_text = external_search.to_textual.de_comma unless nil
        sequence_creation = sequence_text.de_comma.de_space unless nil
        sequence_complete = sequence_creation.split(//).sort.join('') unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze unless nil
        description = "external search"
        reference = searched.to_s.strip
        anagram = 0
        name = 0
        phrase = 0
        research = 0
        external = 1
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

    # SOLID_GOLD_CODE DO NOT CHANGE : 20101026
    # this code was fully completed : 20111112
    # outsputs to screen : processes externals hashes
  def process_externals_hash
    open(file_name) do |f|
      f.each do |line|
      external_searched, searched = line.split("\t")
      external_search = external_searched.to_textual
      sequence_text = external_search.to_textual.de_comma unless nil
      sequence_creation = sequence_text.de_comma.de_space unless nil
      sequence_complete = sequence_creation.split(//).sort.join('') unless nil
      sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
      sequence_singular = sequence_complete.squeeze unless nil
      description = "external search"
      reference = searched.to_s.strip
      anagram = 0
      name = 0
      phrase = 0
      research = 0
      external = 1
      internal = 0
      created_at = "2011-12-12 12:12:00"
      puts "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{sequence_lense}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{created_at}\n"
      end
      end
    end

    # this code completed : 20111114
    # due to the size of the insert_externals.txt file, i use a fiber to process it from one file to another.
  def doing_textuals
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/insert_externals_hash.txt", "a") do |f|
        loop do
          queue = producer.transfer(consumer, queue)
          f.puts << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      g = open(file_name) do |g|
        g.each do |line|
          external_searched, searched = line.split("\t")
          external_search = external_searched.to_textual
          search_time = searched.to_s.strip
          loop do
            a = "#{external_search}\t#{search_time}"
            queue << a unless nil
            break unless line
            consumer.transfer queue
            queue.clear
          end
          raise StopIteration
        end
      end
    end
    consumer.transfer(producer, [])
    after_break
  end

  def plucking_text_and_date_from_externals
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_dones/insert_externals_hash.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_dones/insert_externals_hash_sorted.txt") do |line| 
        queue = ""
        puts queue
        external_searched, external_creation, external_complete, external_lexigram, external_singular, description, reference, anagram, name, phrase, sexualities, internal, external, created_at = line.split("\t")
        sequence_text = external_searched.to_textual.de_comma unless nil
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
  end                                                          # a tiny example of the power of the to_textual
 
end
