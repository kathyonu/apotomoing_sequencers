#!/usr/bin/env ruby -w
module Mysqldataprocessingresearches
 
 #include ApplicationHelper  # uncomment for use in console / remove in production
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console :
# enter   > require "./lib/mysqldataprocessingresearches.rb"
# enter   > doing_research_lines
########    ^^^^^^^^^^^^^^^^^^ that command runs that named fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("./tmp/database_doings/doing_research/insert_research_lines-03.txt")
   #file_name = ("../../Documents/20110731-research.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines-015.txt")
  end

    # after_break is used at end of fiber method doing_research_lines to end process, and save the file addended to.
	# to load the data produced by this fiber method  ^^^^^^^^^^  use these commands in mysql console :
	# in Terminal $ cd ./desideratus/apotomoing_sequencers
	#             $ mysql
    #             mysql> use sequencers_production            ## or developent
	#             mysql> LOAD DATA LOCAL INFILE './tmp/database-master/26/26-hashed.txt' INTO TABLE sequences FIELDS TERMINATED BY '\t' (sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, sequence_lense, description, reference, anagram, name, phrase, research, external, internal, created_at);
  def after_break
   #open(file_name, "r") do |f| 
    open("./tmp/database_doings/doing_uniques/uniques_done.txt", "r") do |f| 
    g = f.read
    f.close
    exit(puts "Processing is complete >> ./tmp/database_doings/doing_uniques/uniques_done.txt << is closed, console has been exited")
    end
  end
  
    # fiber 
	# this method processes lines in a file, line by line
	## outputing the processed data into another file
	### ready for entry into the database using the mysql LOAD command
  def doing_research_lines
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database-master/26/26-hashed.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database-master/26/master_researches-26.txt") do |line|
        queue = ""
        puts queue
        sequence_text = line.to_textual.de_comma
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
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end


    # the above evolved from the below
	# the above outputs data to another file
	# the below outsputs data to screen


    # SOLID GOLD CODE : do not change : 20111111
    # generates all sequences         : 20111111
	# now including the lexigram      : 20111111
    # file_name = ("tmp/masters/text1.txt") 
    # file_name = ("tmp/masters/text2.txt")
  def process_research_line
    file_name = "./tmp/database-master/26/master_researches-26.txt"
   #file_name = "../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt" : reads file in another app called consummates
    open(file_name) do |f|
      f.each do |line|
        sequence_text = line.to_textual.de_comma   
        sequence_creation = line.to_textual.de_comma.de_space
        sequence_complete = line.to_textual.de_comma.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze
        sequence_lense = ""
        description = "research"
        reference = "literoti"
        anagram = 0
        name = 0
        phrase = 0
        research = 1
        external = 0
        internal = 0
        created_at = "2011-12-21 12:12:00"
        p "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{sequence_lense}\t#{sequence_lense}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{research}\t#{external}\t#{internal}\t#{created_at}\n"
      end
    end
  end

    # this method processes the result into a second file
  def doing_researches_file_decomma
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_uniques/uniques_todo.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/insert_researches.txt") do |line| 
        queue = ""
        puts queue
       #sequence_text = line.to_textual
        sequence_text = line.to_textual.de_comma
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
      f = open("./tmp/mega_files/320mb_research_lines/extracted_data.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/mega_files/320mb_research_lines/insert_research_lines.txt") do |line| 
        queue = ""
        puts queue
        sequence_text, sequence_creation, sequence_complete, sequence_lexigram, sequence_singular, description, reference, anagram, name, phrase, research, external, internal, created_at = line.split("\t")
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

    # doing_extract_data_less_156 processes the file line by line, 
    # extracting only those lines with a line.length of 156 characters or less, processing it into another file
  def doing_extract_data_less_156
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database_doings/doing_researches/extracted_linesai_less-156.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/mega_files/995mb_research_lines/unique_research_linesai") do |line| 
        queue = ""
        puts queue
        extracted_data = line.to_textual.de_comma
        if extracted_data.length > 156
          puts "line greater than 156 characters, not used"
        end
        if extracted_data.length <= 156 
          queue << "#{extracted_data}\n"
        end
        break unless line
        consumer.transfer queue
        queue.clear
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end

#marker     doing_extract_words_with_less_than_five_vowels
  
    # this method sorts and uniques any sized file
	# processing the result into a second file
  def doing_researches_file_sort_and_unique
    a = File.readlines("./tmp/insert_researches.txt")
    @megadata = a.sort do |x,y|
     #x.downcase <=> y.downcase
      x.length <=> y.length
    end
    @megadata_unique = @megadata.uniq
    consumer = Fiber.new do |producer, queue|
      f = open("insert_researches_hashed-uniques-ready-for-mysql-entry.txt", "a") do |f| 
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
     #@megadata_unique.each do |line|          # each line, line by line, using the fiber 
      queue << puts "#{@megadata_unique}"      # the entire gulp in one shot
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
	# if you have a large file, use the fiber method : doing_researches_file_sort_and_unique
  def array_to_unique
    a = File.readlines("./tmp/insert_externals.txt")
   #a = File.readlines("./tmp/insert_internals.txt")
   #a = File.readlines(file_name)
    b = a.sort
    c = b.uniq
    while d = c.shift
    puts d unless nil?
   #puts d.to_textual unless nil?  this is kind of pointless to do AFTER sor and unique
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

  # extract_words_with_five_vowels is a self contained proof of working - see extract_words_with_less_than_five_vowels below for actual usage
  def extract_words_with_five_vowels
    patterna = /a/
    patterne = /e/
    patterni = /i/
    patterno = /o/
    patternu = /u/
    lines = ["abba", "obba", "ebbe", "ibbi", "bouter", "aboutisness"]
    while a = lines.shift
      if patterna.match(a)
        if patterne.match(a)
          if patterni.match(a)
            if patterno.match(a)
              if patternu.match(a)
                  puts a
              end
            end
          end
        end
      end
    end
  end

  # prints to screen : see doing_extract_words_with_less_than_five_vowels for processing large file to another file
  def extract_words_with_less_than_five_vowels
    patterna = /a/
    patterne = /e/
    patterni = /i/
    patterno = /o/
    patternu = /u/
    file_name = "./tmp/database-master/26/master_researches-26.txt"
    open(file_name) do |f|
      f.each do |a|
      if patterna.match(a)
        if patterne.match(a)
          if patterni.match(a)
            if patterno.match(a)
              if patternu.match(a)
                puts "line ignored, it has all five vowels"
              else
                puts a
              end
            end
          end
        end
      end
    end
  end

    # doing_extract_words_with_less_than_five_vowels does exactly what is says, lines with four or less vowels present are extracted
  def doing_extract_words_with_less_than_five_vowels
    patterna = /a/
    patterne = /e/
    patterni = /i/
    patterno = /o/
    patternu = /u/
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/database-master/27-50/master_researches-27-50-less_than_five_vowels.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/database_doings/doing_researches/researches_27-50/researches_total_27-50-sorted-uniqued.txt") do |line|
        queue = ""
        puts queue
        a = line.to_textual.de_comma
        if patterna.match(a)
          if patterne.match(a)
            if patterni.match(a)
              if patterno.match(a)
                if patternu.match(a)
                  line = a
                  queue << "#{line}\n"
                  puts "#{line}"
                  break unless line
                  consumer.transfer queue
                  queue.clear
                end
              end
            end
          end
        end  
      end
      raise StopIteration
    end  
    consumer.transfer(producer, [])
    after_break
  end  

end
