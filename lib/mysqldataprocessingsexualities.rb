#!/usr/bin/env ruby -w
module Mysqldataprocessingsexualities
 
 #include ApplicationHelper  # uncomment for use in conole
  include Histogram
  include Textual
  include Lexigram

  require 'fiber'

# USAGE : the require statement in console :
##      > require "./lib/mysql_data_processing_sexualities.rb"
###     > doing_sexual_lines
#### that command runs the fiber shown below

    # file_name allows you to name the file that conatains your data to be processed, using any method below that calls for it
  def file_name
    file_name = ("tmp/insert_sexual_lines.txt")
   #file_name = ("../../Documents/20110731-research.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hash-015.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready_hashlines-015.txt")
  end

  def after_break
    open("./tmp/insert_sexual_lines.txt", "r") do |f| 
    g = f.read
    # puts g    # uncommenting this line line causes each line of data to show on your screen as it is output to the file
    f.close
    exit(puts "Processing is complete >> ./tmp/insert_sexual_lines.txt << is closed, console has been exited")
    end
  end
  
    # fiber 
	# this method processes lines in a file, line by line
	## outputing the processed data into another file
	### ready for entry into the database using the mysql LOAD command
  def doing_sexual_lines
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/insert_sexual_lines.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
     #IO.foreach("./lib/databasers/fibered_files_input.txt") do |line|
      IO.foreach("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt") do |line|
     #IO.foreach("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-012.txt") do |line|
        queue = ""
        puts queue
        sequence_text = line.to_textual.de_comma
          sequence_creation = sequence_text.to_textual.de_comma.de_space unless nil
          sequence_complete = sequence_text.to_textual.de_comma.split(//).sort.join('').strip unless nil
          sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
          sequence_singular = sequence_complete.squeeze unless nil
          description = "sexual materials"
          reference = "literotica"
          anagram = 0
          name = 0
          phrase = 0
          sexualities = 1
          external = 0
          internal = 0
          line = "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{Time.now}\n"
          queue << line
          break unless line
          consumer.transfer queue
          queue.clear
      end
      raise StopIteration
    end  
#    end
    consumer.transfer(producer, [])
    after_break
  end


    # the above evolved from the below
	# the above outputs data to another file
	# the below outsputs data to screen


    # SOLID GOLD CODE : do not change : 20111111
    # generates all sequences         : 20110811
	# now including the lexigram      : 20111111
    # file_name = ("tmp/insert_sexual_lines-01.txt") 
    # file_name = ("tmp/insert_sexual_lines-02.txt")
  def process_sex_line
    file_name = "../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt"
    open(file_name) do |f|
      f.each do |line|
        sequence_text = line.to_textual.de_comma   
        sequence_creation = line.to_textual.de_comma.de_space
        sequence_complete = line.to_textual.de_comma.split(//).sort.join('').strip unless nil
        sequence_lexigram = lexigram_sequencer(sequence_text) unless nil
        sequence_singular = sequence_complete.squeeze
        description = "sexual materials"
        reference = "literotica"
        anagram = 0
        name = 0
        phrase = 0
        sexualities = 1
        external = 0
        internal = 0
        p "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{anagram}\t#{name}\t#{phrase}\t#{sexualities}\t#{external}\t#{internal}\t#{Time.now}"
      end
    end
  end

    # this method sorts any sized file
    # processing the result into a second file
  def doing_externals_file_decomma
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/mega_files/995mb_sexual_lines/mysql_database_ready-015-decommaed.txt", "a") do |f| 
         loop do
          queue = producer.transfer(consumer, queue)
          puts f << queue
          queue.clear
        end
        raise StopIteration
      end
    end
    producer = Fiber.new do |consumer, queue|
      IO.foreach("./tmp/mega_files/995mb_sexual_lines/mysql_database_ready-015.txt") do |line| 
        queue = ""
        puts queue
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

    # needs to be tested : 20111116
    # this method sorts and uniques any sized file
	# processing the result into a second file
  def doing_sexualities_file_sort_and_unique
    a = File.readlines("./tmp/mega_files/995mb_sexual_lines/mysql_database_ready-015-decommaed.txt")
    @megadeta = a.sort do |x,y|
      x.downcase <=> y.downcase
    end
    consumer = Fiber.new do |producer, queue|
      f = open("./tmp/mega_files/995mb_sexual_lines/mysql_database_ready-015-decommaed-sorted.txt", "a") do |f| 
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
	# if you have a large file, use the fiber method : doing_sexualities_file_sort_and_unique
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

end
