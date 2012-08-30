#!/usr/bin/env ruby -w
module Mysqldataprocessinglenses
 
  include ApplicationHelper  # uncomment for use in conole
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console :
##      > require "./lib/mysqldataprocessinglenses.rb"
###     > doing_lense_lines
#### that command runs the fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
   file_name = ("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-in.txt")
   #file_name = ("./tmp/database_doings/doing_lenses/lenses_sorted.txt")
   #file_name = ("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-sequence_textual-out.txt")
  end

    # after_break is used at end of fiber method doing_lense_lines to end process, and save the file addended to
	# to load the data produced by the fiber above use these commands in mysql console :
	# in Terminal
	#    $ cd ./desideratus/apotomoing_sequencers
	#    $ mysql
    #    mysql> use sequencers_production
	#    mysql> LOAD DATA LOCAL INFILE "../../Desktop/tmp/turkish-earthlings/turkish-earthlings-output.txt" INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at);
	#    mysql> LOAD DATA LOCAL INFILE './tmp/database_doings/doing_lenses/lense_lines_hashed.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at);
  def after_break
    f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-out.txt", "r") do |f| 
   #f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings.txt", "r") do |f| 
   #f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-sorted-out.txt", "r") do |f| 
   #f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-sequence_textual-out.txt", "r") do |f| 
   #f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-out.txt", "r") do |f| 
      g = f.read
      puts "processing EXIT command"
      f.close
    end
    exit(puts "Processing is complete >> turkish-earthlings-out is now closed, console has been exited")
  end

    # fiber 
	# this method processes lines in a file, line by line
	## outputing the processed data into another file
	### ready for entry into the database using the mysql LOAD command
  def doing_lense_lines
    consumer = Fiber.new do |producer, queue|
     #f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-sorted-out.txt", "a") do |f| 
      f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-out.txt", "a") do |f| 
        loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("../../Desktop/tmp/turkish-earthlings/turkish-earthlings.txt") do |line|
        queue = ""
        puts queue
        sequence_text = line.chomp.to_textual.de_comma
        sequence_creation = sequence_text.de_space unless nil
        sequence_complete = sequence_text.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(line.to_textual.de_comma) unless nil
        sequence_singular = sequence_complete.squeeze unless nil
        sequence_lense = "pete kerns"
        #sequence_lense = lexigram_sequencer(reference) unless nil
        description = "name art research"
        reference = "patricia sass"
        anagram = 0
        name = 1
        phrase = 0
        research = 1
        external = 0
        internal = 0
        created_at = "2012-08-02 12:00:00"
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

    # this method processes lines from one file with String#to_textual, sending the result into a second file
  def doing_researches_file_decomma
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_researches/file.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_researches/file.txt") do |line| 
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
      f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-sequence_textual-out.txt", "a") do |f| 
     #f = open("./tmp/input-file.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-in.txt") do |line|
     #IO.foreach("./tmp/output-file.txt") do |line| 
        queue = ""
        puts queue
        sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, description, reference, anagram, name, phrase, research, external, internal, created_at = line.split("\t")
       #line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{created_at}")
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

    # notes needed
  def doing_textuals_on_raw_hashes
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_lenses/lenses_sorted.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_lenses/lenses_line_lense.txt") do |line| 
        queue = ""
        puts queue
        external_searched, searched = line.split("\t")
        sequence_text = external_searched.to_textual.de_comma unless nil
        reference = searched.to_s.strip
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
  
    # needs to be tested : 20111116
    # this method sorts and uniques any sized file
    # processing the result into a second file
  def doing_researches_file_sort_and_unique
    consumer = Fiber.new do |producer, queue|
      f = open("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-sorted-out.txt", "a") do |f| 
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
      a = File.readlines("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-in.txt") do |a|
        a.sort do |x,y|
          x.downcase <=> y.downcase
        end
        megadata_unique = a.uniq unless nil
        queue << "#{megadata_unique}" unless nil
        break unless megadata_unique
        consumer.transfer queue
        queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

    # this method reads file in one gulp then runs the sort and then the uniq on it
    # this method outputs to screen
    # if you have a large file, use the fiber method : doing_researches_file_sort_and_unique
  def array_to_unique
    a = File.readlines("../../Desktop/tmp/turkish-earthlings/turkish-earthlings-in.txt")
   #a = File.readlines("./tmp/insert_externals.txt")
   #a = File.readlines("./tmp/insert_internals.txt")
   #a = File.readlines(file_name)
   	b = a.sort
    c = b.uniq
    while d = c.shift
    puts "#{d.downcase}" unless nil?
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
