#!/usr/bin/env ruby -w

# ruby-1.9.2-p0 
# rails >= 3.0.0

# in Terminal, after running > rails console, enter this require statement
##   $ require "./lib/textual-fibering-methods.rb"
###  the Textual module included below is located in /apotomoing_sequencers/app/helpers/textual.rb
#### for the fibering methods to work, you must require the Fiber library, as shown below.
#### this file is under development, not all methods work yet .. use with care.

include Textual

#include Lexigram

require 'histogram'
require 'fiber'

    # file_name allows you to name the file that conatains your data to be processed, using any method below
  def file_name
   #file_name = ("tmp/insert_anagrams.txt")
   #file_name = ("tmp/insert_externals.txt")
   #file_name = ("tmp/insert_internals.txt")
    file_name = ("tmp/insert_sexual_lines.txt")
   #file_name = ("../../Documents/20110421-research_textualed.txt")
   #file_name = ("../consummates/lib/databasers/mysql_database_safe_lines/mysql_database_ready-015.txt")
  end
  

  def process_sexual_sequences
    namesplit = []
    open(file_name) do |f|
      f.each_line do |line|
        sequence_text = (line.to_textual).de_comma
        sequence_creation = (line.to_textual).de_comma.de_space
        sequence_complete = ((line.to_textual).de_comma).split(//).sort.join('').strip
        sequence_lexigram = (line.to_textual).de_comma do |seq| namesplit << seq.split()
		namelength = namesplit.length
		  if namelength > 0; first = namesplit.shift.split(//).to_histogram end
		  if namelength > 0; second = namesplit.shift.split(//).to_histogram end
		  if namelength > 0; third = namesplit.shift.split(//).to_histogram end
		  if namelength > 0; fourth = namesplit.shift.split(//).to_histogram end
		  if namelength > 0; fifth = namesplit.shift.split(//).to_histogram end
		  first_run = first.merge(second) {|key, first, second| (first > second)? first : second }
		  second_run = second.merge(first_run) {|key, first, second| (first > second)? first : second }
		  third_run = third.merge(second_run) {|key, first, second| (first > second)? first : second }
		  fourth_run = fourth.merge(third_run) {|key, first, second| (first > second)? first : second }
          fifth_run = fifth.merge(fourth_run) {|key, first, second| (first > second)? first : second }
          string = (fifth_run.map { |k,v| k*v }).join
          sequenced = string.split(//).sort.join("")
        end
        sequence_singular = sequence_complete.squeeze
        puts "#{sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}"
        sleep(1)
      end
    end
  end

  def process_sexual_lines
    open(file_name) do |f|
      f.each_line do |line| unless nil
        sequence_text = line.to_textual.de_comma
        sequence_creation = line.to_textual.de_comma.de_space
        sequence_complete = sequence_creation.split(//).sort.join('').strip
        #sequence_lexigram = lexigram_sequencer(line.to_textual.de_comma)
        sequence_singular = sequence_complete.squeeze
        puts "#{sequence_text}\t\t\t#{sequence_creation}\t\t\t#{sequence_complete}\t\t\t#{sequence_singular}"
        sleep(1)
      end
    end
  end

    # generates all sequences : 20110811
	# file_name = ("tmp/insert_sexual_lines.txt")                                               #  sequencetext = "these are testers testings testablness" 
  def process_sex_line                                                                          #  sequence_text = "these test sentences"
    open(file_name) do |f|                                                                      #  sequence_text = "this is a seven word test" 
      f.each do |line|                                                                          #  line = "this is tester testing test"
        sequence_text = line.to_textual.de_comma                                               #  => "this is a tester testing a test"   
        sequence_creation = line.to_textual.de_comma.de_space                                   #  => "thisisatestertestingatest" 
        sequence_complete = line.to_textual.de_comma.split(//).sort.join('').strip unless nil   #  => "aaeeeeghiiinrsssssttttttt"
        #sequence_lexigram = lexigram_sequencer(line.to_textual.de_comma) unless nil            #  => "aeeghinrstt"  :  not the way to do it 
        #sequence_lexigram = lexigram_sequencer("{@sequence_text}") unless nil                   #  => "aeeghinrstt"  :  this is the way
        sequence_reverse = sequence_complete.reverse                                            #  => "tttttttsssssrniiihgeeeeaa" 
        sequence_singular = sequence_complete.squeeze                                           #  => "aeghinrst"
        description = "sexual lines"
        reference = "literotica"
        sexualities = 1
        p "#{@sequence_text}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_reverse}\t#{sequence_singular}\t#{description}\t#{reference}\t#{sexualities}"
       sleep(1)
      end
    end
  end

  def sequencertext
    initialize sequencertext
	@sequencertext = sequencertext
  end

  # for use in below without the while statement for testing
  # if @wordcount < 1 && if @wordcount == 0; p "true" end
  #  end   <<<<<<<<< note these two ends must be on  ^^^^^ separate lines for this to work
  def lexigram_sequencer(sequencetext)                                                         # @sequence_text = "these testers are testing testablness"
   #@haracterscount = @sequence_text.to_textual.split(//).length                                # 37
   #@etterscount = @sequence_text.to_textual.de_comma.de_space.split(//).length                 # 33
	@keys_values = Hash.new{}                                                                   # {}
    @name = sequencetext.to_textual.de_comma.strip                                            # "these testers are testing testablness"
    @wordscount1 = sequencetext.to_textual.split(/\W/).length                                  # 5
    @wordscount2 = @wordscount1
	while @wordscount2 > 0;
      if @wordscount2 < @wordscount1
        @key_values << @second_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
      else @wordscount == @sequence_text.to_textual.split(/\W/).length
        @key_values = @first_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
	  end	
	  @string = ""                                                                              # ""
      @sentence = @name.split(/\W/)                                                             # ["these", "are", "testers", "testings", "testablness"]
	  @word =  @sentence.shift                                                                  # "these"
      @firstword1 = @word.split(//).to_histogram                                                # {"t"=>1, "h"=>1, "e"=>2, "s"=>1} 
      @word2 = @sentence.shift                                                                  # "testers"
	  @secondword2 = @word2.split(//).to_histogram                                              # {"t"=>2, "e"=>2, "s"=>2, "r"=>1} 
      @key_values << @second_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
      @wordscount2 = @wordscount2 -1         
      @second_run = @second_run.clear
      @firstword1 = ""
      @secondword2 = ""
      @first_run = @firstword1.merge(@secondword2) {|key, first, second| (first > second)? first : second }
      @wordscount = @wordscount -1                                                             # 4
        #p @first_run.class                                                                      # Hash
        #p @first_run
      @first_run = @first_run.clear                                                            # {}
        #p @first_run
        #p @firstword1
      @firstword1 = ""                                                                         # ""
        #p @firstword1
        #p @firstword2
      @secondword2 = ""                                                                        # ""
        #p @firstword2
        #p @key_values     # + " <<<<<<<<<<<<< lexigram sequence buildup"                          # {"t"=>2, "h"=>1, "e"=>2, "s"=>2, "r"=>1}
        #p @first_run      # + " <<<<<<<<<<<<<< should be empty string"                            # {}
        #p @wordscount     # + " <<<<<<<<<<<<< should reduce by one"                               # 4
      end
   # p "words count = " + @wordscount.to_s                                                       # "words count = 4"
   # p "characters count = " + @characterscount.to_s
   # p "letters count = " + @letterscount.to_s
   # @sequencetext                                                                               # "these testers are testing testablness"
    @key_values                                                                                 
  end



 
  
   
	
  # a quick lambda call : example : if bees.(a, l)
  def bees(x=@x,y=@y)
    bees = lambda{@x = x; @y = y; if x.to_s < y.to_s; p "oxenyaes"; else p "oxennaes"; end}
    bees.call
    bees = lambda{@x = x; @y = y; if x.to_s < y.to_s; p "oxenayes"; else p "oxennays"; end}
	bees.call
  end

  # for use in below without the while statement for testing
  # if @wordcount < 1 && if @wordcount == 0; p "true" end
  #  end  ## note these two ends must be on separate lines for this to work
#  def lexigram_sequencer(sequence_text)                                                         # @sequence_text = "these testers are testing testablness"
###    characterscount = @sequence_text.to_textual.split(//).length                                # 37
    ###    letterscount = @sequence_text.to_textual.de_comma.de_space.split(//).length                 # 33
    ###    @keys_values = Hash.new{}                                                                   # {}
    ###    @name = @sequence_text.to_textual.de_comma.strip                                            # "these testers are testing testablness"
    ###    @wordscount = @sequence_text.to_textual.split(/\W/).length                                  # 5
    ###    while @wordscount > 0 
    ###      @string = ""                                                                              # ""
    ###      @sentence = @name.split(/\W/)                                                             # ["these", "are", "testers", "testings", "testablness"]
    ###      @word =  @sentence.shift                                                                  # "these"
    ###      @firstword1 = @word.split(//).to_histogram                                                # {"t"=>1, "h"=>1, "e"=>2, "s"=>1} 
    ###      @word2 = @sentence.shift                                                                  # "testers"
    ###      @secondword2 = @word2.split(//).to_histogram                                              # {"t"=>2, "e"=>2, "s"=>2, "r"=>1} 
    ###      @first_run = @firstword1.merge(@secondword2) {|key, first, second| (first > second)? first : second }  # {"t"=>2, "h"=>1, "e"=>2, "s"=>2, "r"=>1} 
    ###       #if (@wordscount < ((@sequence_text.to_textual.split(/\W/)).length)) || (@wordscount != 0) == true p "true"; else p "false"; end  # to test value
    ###       #if (@wordscount < ((@sequence_text.to_textual.split(/\W/)).length)) || (@wordscount != 0) == true
    ###       #if @wordscount == 0 then return @key_values
    ###    	if @wordscount < @sequence_text.to_textual.split(/\W/).length
    ###    	  @key_values << @second_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
    ###        else @wordscount == @sequence_text.to_textual.split(/\W/).length
    ###    	  @key_values = @first_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
    ###        end
    ###      @wordscount = @wordscount -1                                                              # 4
    ###      p @first_run.class                                                                        # Hash
    ###      p @first_run
    ###      @first_run = @first_run.clear                                                             # {}
    ###      p @first_run
    ###      p @firstword1
    ###      @firstword1 = ""                                                                          # ""
    ###      p @firstword1
    ###      p @firstword2
    ###      @secondword2 = ""                                                                         # ""
    ###      p @firstword2
    ###      p @key_values     # + " <<<<<<<<<<<<< lexigram sequence buildup"                          # {"t"=>2, "h"=>1, "e"=>2, "s"=>2, "r"=>1}
    ###      p @first_run      # + " <<<<<<<<<<<<<< should be empty string"                            # {}
    ###      p @wordscount     # + " <<<<<<<<<<<<< should reduce by one"                               # 4
    ###    end
    ###    p "words count = " + @wordscount.to_s                                                       # "words count = 4"
    ###    p "characters count = " + @characterscount
    ###    p "letters count = " + @letterscount
    ###    @key_values                                                                                 
    ###    @sequence_text                                                                              # "these testers are testing testablness"
###  end



  # for use in below without the while statement for testing
  # if @wordcount < 1 && if @wordcount == 0; p "true" end
  #  end  ## note these two ends must be on separate lines for this to work
  ##  def lexigram_sequencer(sequence_text)                                                         # @sequence_text = "these testers are testing testablness"
  ##    characterscount = @sequence_text.to_textual.split(//).length                                # 37
  ##    letterscount = @sequence_text.to_textual.de_comma.de_space.split(//).length                 # 33
  ##    @keys_values = Hash.new{}                                                                   # {}
  ##    @name = @sequence_text.to_textual.de_comma.strip                                            # "these testers are testing testablness"
  ##    @wordscount = @sequence_text.to_textual.split(/\W/).length                                  # 5
  ##    while @wordscount > 0 
  ##    @string = ""                                                                              # ""
  ##    @sentence = @name.split(/\W/)                                                             # ["these", "are", "testers", "testings", "testablness"]
  ##    @word =  @sentence.shift                                                                  # "these"
  ##    @firstword1 = @word.split(//).to_histogram                                                # {"t"=>1, "h"=>1, "e"=>2, "s"=>1} 
  ##    @word2 = @sentence.shift                                                                  # "testers"
  ##    @secondword2 = @word2.split(//).to_histogram                                              # {"t"=>2, "e"=>2, "s"=>2, "r"=>1} 
  ##    @first_run = @firstword1.merge(@secondword2) {|key, first, second| (first > second)? first : second }  # {"t"=>2, "h"=>1, "e"=>2, "s"=>2, "r"=>1} 
  ##      #if (@wordscount < ((@sequence_text.to_textual.split(/\W/)).length)) || (@wordscount != 0) == true p "true"; else p "false"; end  # to test value
  ##      #if (@wordscount < ((@sequence_text.to_textual.split(/\W/)).length)) || (@wordscount != 0) == true
  ##      #if @wordscount == 0 then return @key_values
  ##  	if @wordscount < @sequence_text.to_textual.split(/\W/).length
  ##  	  @key_values << @second_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
  ##        else @wordscount == @sequence_text.to_textual.split(/\W/).length
  ##  	  @key_values = @first_run.merge(@key_values) {|key, first, second| (first > second)? first : second }
  ##        end
  ##    @wordscount = @wordscount -1                                                              # 4
  ##    p @first_run.class                                                                        # Hash
  ##    p @first_run
  ##    @first_run = @first_run.clear                                                             # {}
  ##    p @first_run
  ##    p @firstword1
  ##    @firstword1 = ""                                                                          # ""
  ##    p @firstword1
  ##    p @firstword2
  ##    @secondword2 = ""                                                                         # ""
  ##    p @firstword2
  ##      p @key_values     # + " <<<<<<<<<<<<< lexigram sequence buildup"                          # {"t"=>2, "h"=>1, "e"=>2, "s"=>2, "r"=>1}
  ##      p @first_run      # + " <<<<<<<<<<<<<< should be empty string"                            # {}
  ##    p @wordscount     # + " <<<<<<<<<<<<< should reduce by one"                               # 4
  ##    end
  ##    p "words count = " + @wordscount.to_s                                                       # "words count = 4"
  ##    p "characters count = " + @characterscount
  ##    p "letters count = " + @letterscount
  ##    @key_values                                                                                 
  ##    @sequence_text                                                                              # "these testers are testing testablness"
  ##  end








    ## this successfully processes the first two words of a string of any length, in console
 ## def lexigram_sequencer(sequence_text)
 ## @characterscount = sequence_text.to_textual.split(//).length
 ## @letterscount = @name.to_textual.de_comma.de_space.split(//).length
 ## @keys_values = Hash.new{}
 ## @name = sequence_text
 ## #loop do
 ## @wordscount = @name.to_textual.split(/\W/).length
 ## #while @wordscount > 0 
 ##   @string = ""
 ##   @sentence = @name.split(/\W/)
 ##   @word =  @sentence.shift
 ##   @firstword1 = @word.split(//).to_histogram
 ##   @word2 = @sentence.shift
 ##   @secondword2 = @word2.split(//).to_histogram
 ##   @first_run = @firstword1.merge(@secondword2) {|key, first, second| (first > second)? first : second }
 ##   @key_values = @first_run
 ##   @wordscount = @wordscount -1
 ##   @first_run = ""
 ##   @firstword1 = ""
 ##   @secondword2 = ""
 ##   p @key_values
 ## # end
 ## # end
 ## p "words count = " + @wordscount.to_s + " should be 2"
 ## p "characterscount = " + @characterscount.to_s
 ## p "letterscount = " + @letterscount.to_s
 ## # sequenced = string.split(//).sort.join("")
 ## end
  




#  # line by line processing
#  def lexigram_sequencer(sequence_text)
#   #name = "learning to create ruby sequencers"
#    name = @sequence_text
#    namesplit = name.split()
#    namelength = namesplit.length
#    if namelength > 0; first = namesplit.shift.split(//).to_histogram end
#    if namelength > 0; second = namesplit.shift.split(//).to_histogram end
#    if namelength > 0; third = namesplit.shift.split(//).to_histogram end
#    if namelength > 0; fourth = namesplit.shift.split(//).to_histogram end
#    if namelength > 0; fifth = namesplit.shift.split(//).to_histogram end
#    first_run = first.merge(second) {|key, first, second| (first > second)? first : second }
#    second_run = second.merge(first_run) {|key, first, second| (first > second)? first : second }
#    third_run = third.merge(second_run) {|key, first, second| (first > second)? first : second }
#    fourth_run = fourth.merge(third_run) {|key, first, second| (first > second)? first : second }
#    fifth_run = fifth.merge(fourth_run) {|key, first, second| (first > second)? first : second }
#    string = (fifth_run.map { |k,v| k*v }).join
#    sequenced = string.split(//).sort.join("")
#  end








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
  def process_internals_hash
    File.open("tmp/insert_internals.txt", "r") do |f|
   #File.open(file_name, "r") do |f|
   #File.open("./lib/internals/internals_table_data_input_hash.txt", "r") do |f|
   #File.open("./lib/internals/internals_table_data.lines.txt", "r") do |f|
      f.each_line do |line|
	  unless nil
        internal_searched, searched = line.split("\t")
          sequence_text = internal_searched.to_textual
          sequence_creation = sequence_text.de_comma.de_space
          sequence_complete = sequence_creation.split(//).sort.join('').strip
          sequence_lexigram = sequence_complete.reverse      # until the lexigram code is complete, i replace it with a simple reverse
          sequence_singular = sequence_complete.squeeze
          description = "internal search"
          reference = searched.strip
          internal = 1
          puts "#{internal_searched.to_textual}\t#{sequence_creation}\t#{sequence_complete}\t#{sequence_lexigram}\t#{sequence_singular}\t#{description}\t#{reference}\t#{internal}"
	      end
		 #sleep(1)
        end
      end
  end

    # solid_gold_code DO NOT CHANGE : 20101026
  def process_internals_lines
    File.open(file_name, "r") do |f|
   #File.open("./lib/internals/internals_table_data_input_lines.txt", "r") do |f|
      f.each_line do |line|
        puts line.to_textual
        sleep(0.01)
       # created_sequence_id = external_searched(/continue code/)
       # creation_sequence_id = 
       # complete_sequence_id = 
       # lexigram_sequence_id = 
       # singular_sequence_id = complete_sequence_id.squeeze
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

    # TODO : add description to this fiber
  def doing_textuals
    consumer = Fiber.new do |producer, queue|
     #f = open("./lib/fiber_output.txt", "a") do |f|
     #f = open("./lib/files_to_textual/fibering_files_output.txt", "a") do |f|
     #f = open("./lib/databasers/fibering_files_output.txt", "a") do |f| 
      f = open("./lib/databasers/fibered_files_output.txt", "a") do |f|
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
          f.puts << queue
          queue.clear
        end
        raise StopIteration
      end
      end
      producer = Fiber.new do |consumer, queue|
     #list = File.readlines(file_name)
      list = File.readlines("./lib/anagrams/anagrams_table_data.txt")
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
  def uniquely
   full_string = File.read(file_name)
   full_list = full_string.to_textual
   sort_list = full_list.sort
   uniq_list = sort_list.uniq
   render 
  end
  
    # test this puppy, make sure it works
  def unique
   list = File.readlines(file_name)
   full_list = list.sort_by { |x| x.to_textual }
   #uniques = full_list.uniq
   uniques = full_list
   puts uniques
  end

    # sorts the file_name, it does not unique it
  def un_unique
   list = File.readlines(file_name)
   full_list = list.sort_by { |x| x.downcase }
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

    # processes the file_name data to screen, using the homegrow method #to_textual which is in the 'include Textual' statement.
    # textual.rb resides in /app/helpers/textual.rb
  def textualed
    list = File.readlines(file_name)
    full_list = list.sort_by { |x| x.downcase }
      while a = full_list.shift
        puts a.to_textual unless nil? 
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
    File.open("../database_runs/temp-sort.txt", "r") do |line|
      line.each_with_index do |i,x|
        puts "#{x}" + "#{i.to_textual}"
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
      b = IO.readlines(file_name)
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
      IO.foreach(file_name) do |line|
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
  
    # processes a file, line by line, through String#.to_textual, then into the output file, for appending to it.
  def fibering_files_lines_output
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
      File.open("./lib/databasers/fibered_files_input.txt", "r") do |f| 
        loop do
          queue = f.each_line.to_s.chomp.to_textual
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
