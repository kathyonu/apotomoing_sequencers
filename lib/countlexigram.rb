#!/usr/bin/env ruby -w
module Countlexigram

  include Searchlexigram
  include Textual

  attr_accessor :sequencetext
  attr_accessor :lexigrams_count

  # this module method generates the lexigram sequence from the user entry, calling on lexigram_searcher(sequencetext) in lib/lexigram.rb
  # which then searches the sequence_lexigram column in the database, at which point the lexigram_count variable is assigned the count : 20120116

  puts "Countlexigram Module has been included"  # for use in console or server real time reporting of usage
  
  def lexigram_counter(sequencetext)
    @sequencetext = sequencetext
	@lexigrams = lexigram_searcher(@sequencetext)
	if @lexigrams === ["no letters remain after processing"]
	  @lexigrams_count = 0
    else
      @lexigrams_count = @lexigrams.count.to_s
    end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Countlexigram = Countlexigram
