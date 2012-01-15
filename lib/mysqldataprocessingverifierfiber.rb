#!/usr/bin/env ruby -w
module Mysqldataprocessingverifierfiber
 
 #include ApplicationHelper  # uncomment for use in console / remove in production
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console :
# enter   > require "./lib/mysqldataprocessingverifierfiber.rb"
# enter   > doing_verified_unique
########    ^^^^^^^^^^^^^^^^^^ that command runs that named fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("./tmp/database_doings/doing_uniques/uniques_done.txt")
  end

    # after_break is used at end of fiber method doing_verified_unique to end processing and save the file addended to.
	# to load the data produced by this fiber method  ^^^^^^^^^^  use these commands in mysql console :
	# in Terminal $ cd ./desideratus/apotomoing_sequencers
	#             $ mysql
    #             mysql> use sequencers_production            ## or developent
	#             mysql> LOAD DATA LOCAL INFILE './tmp/database_doings/doing_uniques/uniques_done.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at);
  def after_break
   #open(file_name, "r") do |f| 
    open("./tmp/database_doings/doing_uniques/uniques_done.txt", "r") do |f| 
    g = f.read
    f.close
    exit(puts "Processing is complete >> ./tmp/database_doings/doing_uniques/uniques_done.txt << is closed, console has been exited")
    end
  end
  
    # fiber 
	# this method first reads the input file and downcase sorts it, 
	## then uniques it, then puts it into @megatdata_unique variable
	### then processes that variable line by line, 
	#### then verifying the data is not already in the database, 
	##### then outputing the processed data into another file
	###### ready for entry into the database using the mysql LOAD command
  def doing_verified_unique_researches  # adjustable line length filter
    consumer = Fiber.new do |producer, queue|
      a = File.readlines("./tmp/insert_researches.txt")
      @megadata = a.sort do |x,y|
        x.downcase <=> y.downcase
      end
      @megadata_unique = @megadata.uniq
      f = open("./tmp/database_doings/doing_uniques/uniques_done.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
     #IO.foreach("./tmp/database_doings/doing_uniques/uniques_todo.txt") do |line|
        queue = ""
        puts queue
        @megadata_unique.each do |line|
          sequence_text = line.to_textual.de_comma
          if sequence_text.length < 52             # adjustable
            puts "line ignored due to length"
          elsif Sequence.find_by_sequence_text(sequence_text)
            puts "line ignored as it is already in database : " + "#{sequence_text}"
          else
            sequence_creation = sequence_text.de_space unless nil
            sequence_complete = sequence_text.split(//).sort.join('').strip unless nil
            sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
            sequence_singular = sequence_complete.squeeze unless nil
            description = "research"
            reference = "literoti"
            anagram = 0
            name = 0
            phrase = 0
            research = 1
            external = 0
            internal = 0
            created_at = "2011-12-21 12:12:00"
           #line = "#{sequence_text}\n"
            line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{created_at}\n"
            queue << line
            break unless line
            consumer.transfer queue
            queue.clear
          end
        end
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end









































    # fiber 
	# this method first reads the input file and downcase sorts it, 
	## then uniques it, then puts it into @megatdata_unique variable
	### then processes that variable line by line, 
	#### then verifying the data is not already in the database, 
	##### then outputing the processed data into another file
	###### ready for entry into the database using the mysql LOAD command
  def doing_raw_file_to_verified_unique_researches  # adjustable line length filter
    consumer = Fiber.new do |producer, queue|
      a = File.read("../../Documents/20111224-research.txt")
	  new = a.to_textual
#TODO finishe	  
      @megadata = a.sort do |x,y|
        x.downcase <=> y.downcase
      end
      @megadata_unique = @megadata.uniq
      f = open("./tmp/database_doings/doing_uniques/uniques_done.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
     #IO.foreach("./tmp/database_doings/doing_uniques/uniques_todo.txt") do |line|
        queue = ""
        puts queue
        @megadata_unique.each do |line|
          sequence_text = line.to_textual.de_comma
          if sequence_text.length < 50             # adjustable
            puts "line ignored due to length"
          elsif Sequence.find_by_sequence_text(sequence_text)
            puts "line ignored as it is already in database : " + "#{sequence_text}"
          else
            sequence_creation = sequence_text.de_space unless nil
            sequence_complete = sequence_text.split(//).sort.join('').strip unless nil
            sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
            sequence_singular = sequence_complete.squeeze unless nil
            description = "research"
            reference = "literoti"
            anagram = 0
            name = 0
            phrase = 0
            research = 1
            external = 0
            internal = 0
            created_at = "2011-12-21 12:12:00"
           #line = "#{sequence_text}\n"
            line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{created_at}\n"
            queue << line
            break unless line
            consumer.transfer queue
            queue.clear
          end
        end
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

end
