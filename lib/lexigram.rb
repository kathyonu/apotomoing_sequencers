#!/usr/bin/env ruby -w
module Lexigram
 
  include Histogram
  include Textual

  puts "Lexigram Module has included Histogram and Textual modules" # for use in console

  attr_accessor :sequencetext
  attr_accessor :lexigram_sequence
  attr_accessor :lexigram_sequenced
  
    # calling lexigram_sequenced returns the @lexigram_sequence
  def lexigram_sequenced
    @lexigram_sequenced = lexigram_sequencer(sequencetext)
   #@lexigram_sequenced = lexigram_sequencer(sequencetext|anagram_text)
  end
    ## in console 
    # > include Lexigram
    #  Textual Module is loaded
    #  Histogram Module is loaded
    #  Lexigram Module has included Histogram and Textual modules
    #   => Object 
    # > @sequencetext = "this is an inside testing"
    #  => "this is an inside testing" 
    # > lexigram_sequenced
    #  => "adeghiinstt" 
    # > @sequencetext = Time.now.to_s
    #  => 2011-10-16 15:42:31 -0700 
    # > @sequencetext.to_textual
    #  => "twenty eleven ten sixteen fifteen forty two thirty one zero seven hundred"
    # > lexigram_sequenced
    #  => "ddeeeffhilnorsttuvwxyz"
	
    # lexigram_sequencer(sequencetext) generates the sequence_lexigram from any sequencetext entered
  def lexigram_sequencer(sequencetext)
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    #puts "at line 37 sequencetext is tainted ? " + sequencetext.tainted?.to_s  # => :false
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    #puts "at line 40 the result of sequencetext.to_textual : " + "#{@sequencetextualed}"
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    #puts "at line 43 the result of sequencetext.to_textual.de_comma : " + "#{@sequencetextdecommaed}"
    @sequencetextdespaced = @sequencetextdecommaed.de_space
    #puts "at line 45 the result of @sequencetextdecommaed.de_space : " + "#{@sequencetextdespaced}"
    @characterscount = @sequencetextualed.split(//).length
    #puts "at line 47 the @ characterscount : @sequencetextualed.split(//).length : " + "#{@characterscount}"
    @letters = @sequencetextualed.de_comma.gsub(/\s+/, "").split(//).length
    #puts "at line 49 the @ letters variable count : @sequencetextualed.de_comma.de_space.split(//).length " + "#{@letters}"
    wordscountbase = @sequencetextualed.split(/\W/).length
    @wordscounter = wordscountbase
    @lexigram_array = Array.new(0)
    @lexigram_sequence = ""
    @lexigram_letters = ""
    @lexigram_letters_array = Array.new(0)
    @lexigram_hash1 = Hash.new{0}
    @lexigram_hash2 = Hash.new{0}
    @lexigram_hashaaainterim = Array.new(0)
    @lexigram_hashaaa = Hash.new(0)
    @lexigram_hashbbbinterim = Array.new(0)
    @lexigram_hashbbb = Hash.new(0)
    @lexigram_hashcccinterim = Array.new(0)
    @lexigram_hashccc = Hash.new{0}
    @lexigram_hash_holder1 = Hash.new{0}
    @lexigram_hash_holder2 = Hash.new{0}
    @lexigram_letterscount = ""
    @keys_valuea = Array.new(0)
    @keys_valueaa = Array.new(0)
    @keys_valuesa = Hash.new{0}
    @keys_valuesaa = Hash.new{0}
    @keys_valuesaaa = Hash.new{0}
    @keys_valuesbbinterim = Array.new(0)
    @keys_valuesbb = Hash.new{0}
    @keys_values1 = Hash.new{0}
    @keys_values2 = Hash.new{0}
    @words1 = ""
    @words2 = ""
    @words3 = ""
    @worda = ""
    @wordaa = ""
    @wordaaa = ""
    @wordbb = ""
    @wordbbb = ""
    @wordccc = ""
    sentence = @sequencetextdecommaed.strip
    @words = sentence.split(/\W/)
    if @wordscounter === 0
      "no letters remain after processing"
    elsif @wordscounter === 1
      @worda = @words.shift
      @wordscounter -= 1
      @keys_valuea = @worda.split(//)
      @keys_valuea.extend Histogram
      #puts "at line 71, @ keys_value1 are " + "#{@keys_value1}"
      @keys_valuesa = @keys_valuea.to_histogram
      #puts "at line 74, @keys_valuesa are " + "#{@keys_valuesa}"
      @lexigram_letters_array = @keys_valuesa.collect do | k, v | "#{k}" * v end
      @lexigram_letters = @lexigram_letters_array.join
      @lexigram_sequence = @lexigram_letters.split(//).sort.join.strip
      if (@lexigram_sequence.to_s) == ("") then
        @lexigram_sequence = "no letters remain after processing"
      else
        @lexigram_sequence
      end
    elsif @wordscounter === 2
      @wordaa = @words.shift
      @wordscounter -= 1
      @keys_valueaa = @wordaa.split(//)
      @keys_valueaa.extend Histogram
      #puts "at line 97, @keys_valueaa are " + "#{@keys_valueaa}"
      @keys_valuesaa = @keys_valueaa.to_histogram
      @lexigram_array = @keys_valuesaa.collect do | k, v | "#{k}" * v end
      @lexigram_letters = @lexigram_array.join
      @lexigram_sequence = @lexigram_letters.split(//).sort.join.strip
      @wordbb = @words.shift
      @wordbb.extend Histogram
        @wordscounter -= 1
        @keys_valuesbbinterim = @wordbb.split(//)
        @keys_valuesbbinterim.extend Histogram
        @keys_valuesbb = @keys_valuesbbinterim.to_histogram
        @lexigram_hash1 = @keys_valuesaa.merge(@keys_valuesbb) do | key, first, second | (first > second)? first : second end unless nil
        @lexigram_array = @lexigram_hash1.collect do | k, v | "#{k}" * v end.sort
        @lexigram_sequence = ""
        @lexigram_sequence = @lexigram_array.split(//).sort.join.strip
        if (@lexigram_sequence.to_s) == ("") then
          @lexigram_sequence = "no letters remain after processing"
        else
          @lexigram_sequence
        end  
    elsif @wordscounter >= 3
      while @wordscounter >= 0
        @wordaaa = @words.shift
        @wordaaa.extend Histogram
        @wordscounter -= 1
        @lexigram_hashaaainterim = @wordaaa.split(//)
        @lexigram_hashaaainterim.extend Histogram
        @lexigram_hashaaa = @lexigram_hashaaainterim.to_histogram
        @wordbbb = @words.shift
        @wordscounter -= 1
        @lexigram_hashbbbinterim = @wordbbb.split(//)
        @lexigram_hashbbbinterim.extend Histogram 
        @lexigram_hashbbb = @lexigram_hashbbbinterim.to_histogram
        @keys_valuesaaa = @lexigram_hashaaa.merge(@lexigram_hashbbb) do | key, first, second | (first > second)? first : second end
        @lexigram_hash_holder1 = @keys_valuesaaa
        @lexigram_sequence = @lexigram_hash_holder1.collect do | k, v | "#{k}" * v end.sort.join.strip
        @lexigram_sequence
        loop do
          @wordccc = ""
          @wordccc = @words.shift unless nil
          @wordccc.extend Histogram  
          if @wordccc == nil
            return @lexigram_sequence
              break if @wordcounter == 0
          else
            @wordscounter -= 1
            @lexigram_hashcccinterim = @wordccc.split(//)
            @lexigram_hashcccinterim.extend Histogram
            @lexigram_hashccc = @lexigram_hashcccinterim.to_histogram
            @keys_values2 = @lexigram_hash_holder1.merge(@lexigram_hashccc) do |key, first, second| (first > second)? first : second end unless nil
            @lexigram_hash_holder2 = @keys_values2
            @lexigram_hash_holder1 = @keys_values2
            @lexigram_letters_array = @lexigram_hash_holder2.collect do | k, v | "#{k}" * v end.sort
            @lexigram_sequence = @lexigram_hash_holder2.collect do | k, v | "#{k}" * v end.sort.join.strip
          end
          if (@lexigram_sequence.to_s) == ("") then
            @lexigram_sequence = "no letters remain after processing"
          else
            @lexigram_sequence
          end
        end
      end
    end
  end
  
  class Array
    include Histogram
  end

  class String
    include Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Lexigram = Lexigram
