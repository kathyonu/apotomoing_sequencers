#!/usr/bin/env ruby -w
module Mysqldatabaseverificationsfiber

  include ApplicationHelper  # uncomment for use in console / remove in production
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console :
# enter   > require "./lib/mysqldatabaseverificationsfiber.rb"
# enter   > doing_verified_sequences
########    ^^^^^^^^^^^^^^^^^^ that command runs that named fiber shown below

 
    # fiber 
    # this method begins with reading id #1 of the database, 
    ## then compares the five sequences in the database,
    ### with newly generated sequences, if they match, all is good. 
    #### if they do not match, a note is printed in the output file.
  def doing_verified_sequences  # adjustable line length filter
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_verifications_on_database_sequences.txt", "a") do |f| 
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
      @id = 1
        loop do |line|
          line = Sequence.find_by_id("#{@id}")
          @id += 1
          next if line == nil 
          sequence_text = line.sequence_text
          sequence_creation = line.sequence_creation
          sequence_complete = line.sequence_complete
          sequence_lexigram = line.sequence_lexigram
          sequence_singular = line.sequence_singular
          creation = sequence_text.de_space
          complete = sequence_text.split(//).sort.join.strip
          lexigram = lexigram_sequencer(sequence_text)
          singular = sequence_text.split(//).sort.join.strip.squeeze
          if creation != sequence_creation
            sequencecreation =  "something is wrong with sequence_creation on ID# #{@id} : #{sequence_text}"
          else  sequencecreation = "ok"
          end
          if complete != sequence_complete
            sequencecomplete = "something is wrong with sequence_complete on ID# #{@id} : #{sequence_text}"
          else  sequencecomplete = "ok"
          end
          if lexigram != sequence_lexigram
            sequencelexigram "something is wrong with sequence_lexigram on ID# #{@id} : #{sequence_text}"
          else  sequencelexigram = "ok"
          end
          if singular != sequence_singular
            sequencesingular = "something is wrong with sequence_singular on ID# #{@id} : #{sequence_text}"
          else  sequencesingular = "ok"
          end
          if sequencesingular == "ok" and sequencelexigram == "ok" and sequencecomplete == "ok" and sequencecreation == "ok"
            line = "#{sequence_text}\n"
          else  
            line = "#{sequencetext}\t#{sequencecreation}\t#{sequencecomplete}\t#{sequencelexigram}\t#{sequencesingular}\n"
          end
          queue << line
          break unless line
          consumer.transfer queue
          queue.clear
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
  def doing_raw_file_to_verified_unique_researches   # adjustable line length filter
    consumer = Fiber.new do |producer, queue|
      a = File.read("../../Documents/20111224-research.txt")
      new = a.to_textual
#TODO finish      
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
