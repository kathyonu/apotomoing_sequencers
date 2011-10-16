#!/usr/bin/env ruby -w
module Lexigram
  
  require 'textual'
  require 'histogram'
  
  include Textual
  include Histogram
  
  puts "Lexigram Module is loaded"				 # for use in console

# require './lib/sequencerings/textualfibers.rb' : for use in console

  attr_accessor :sequencetext
  attr_accessor :lexigram_sequence
  attr_accessor :lexigram_sequenced
  attr_accessor :lexigram_sequencer
  
  # calling lexigram_sequenced returns the @lexigram_sequence
  def lexigram_sequenced
    @lexigram_sequenced = lexigram_sequencer(sequencetext)
  end
    # > require "./lib/sequencerings/textualfibers.rb"   : these codes have changes
    #   => ["Textualfibers"]                             : and may no longer operate this particulary way.
    # > @sequencetext = "this is an inside testing"
    #  => "this is an inside testing" 
    # > lexigram_sequenced
    # => "adeghiinstt" 
    # > @sequencetext = @get_time
    #  => "2011-09-09 11:01:47 -0700" 
    # > lexigram_sequenced
	#  => "ddeeefhilnnorsttuvwyz"  

# private

  ### lexigram_sequencer(sequencetext) generates the sequence_lexigram from any sequencetext entered
  def lexigram_sequencer(sequencetext)
    @sequencetext = sequencetext
    @characterscount = @sequencetext.to_s.to_textual.split(//).length
    @letters = @sequencetext.to_s.to_textual.de_comma.de_space.split(//).length
    wordscountbase = @sequencetext.to_s.to_textual.split(/\W/).length
    @wordscounter = wordscountbase
    @lexigram_sequence = ""
    @lexigram_letters_array = Array.new
    @lexigram_hash_holder = Hash.new{0}
    @lexigram_hash1 = Hash.new{0}
    @lexigram_hash2 = Hash.new{0}
    @keys_values1 = Hash.new{0}
    @keys_values2 = Hash.new{0}
    @words1 = ""
    @words2 = ""
    @words3 = ""
    sentence = @sequencetext.to_s.to_textual.de_comma.strip
    @words = sentence.split(/\W/)
    if @wordscounter === 1
      @word1 = @words.shift
      @wordscounter -= 1
      @keys_values1 = @word1.split(//).to_histogram
      @lexigram_letters_array = @keys_values1.collect do | k, v | "#{k}" * v end
      @lexigram_letters = @lexigram_letters_array.join
      @lexigram_sequence = @lexigram_letters.split(//).sort.join
     #return @lexigram_sequence
	  @lexigram_sequence
    elsif @wordscounter === 2
      @word1 = @words.shift
      @wordscounter -= 1
      @keys_values1 = @word1.split(//).to_histogram
      @lexigram_array = @keys_values1.collect do | k, v | "#{k}" * v end
      @lexigram_letters = @lexigram_array.join
      @lexigram_sequence = @lexigram_letters.split(//).sort.join
      @word2 = @words.shift
        @wordscounter -= 1
        @keys_values2 = @word2.split(//).to_histogram
        @lexigram_hash1 = @keys_values1.merge(@keys_values2) do | key, first, second | (first > second)? first : second end unless nil
        @lexigram_array = @lexigram_hash1.collect do | k, v | "#{k}" * v end.sort
        @lexigram_sequence = @lexigram_array.split(//).sort.join
       #return @lexigram_sequence
        @lexigram_sequence
    elsif @wordscounter >= 3
      while @wordscounter >= 0
        @word1 = @words.shift
        @wordscounter -= 1
        @lexigram_hash1 = @word1.split(//).to_histogram unless nil
        @word2 = @words.shift
        @wordscounter -= 1
        @lexigram_hash2 = @word2.split(//).to_histogram unless nil
        @keys_values1 = @lexigram_hash1.merge(@lexigram_hash2) do | key, first, second | (first > second)? first : second end unless nil
        @keys_values1
        @lexigram_hash_holder1 = @keys_values1
        @lexigram_sequence = @lexigram_hash_holder1.collect do | k, v | "#{k}" * v end.sort.join
        loop do
          @word3 = nil
          @word3 = @words.shift unless nil
            if @word3 == nil
              return @lexigram_sequence
                break if @wordcounter == 0
            else
              @lexigram_sequence = nil
              @wordscounter -= 1
              @lexigram_hash2 = @word3.split(//).to_histogram unless nil
              @keys_values2 = @lexigram_hash_holder1.merge(@lexigram_hash2) do |key, first, second| (first > second)? first : second end unless nil
              @lexigram_hash_holder2 = @keys_values2 unless nil
              @lexigram_hash_holder1 = @keys_values2 unless nil
              @lexigram_letters_array = @lexigram_hash_holder2.collect do | k, v | "#{k}" * v end.sort
              @lexigram_sequence = @lexigram_hash_holder2.collect do | k, v | "#{k}" * v end.sort.join
            end
          end
        end
      end
  end
  @lexigram_sequence

end
