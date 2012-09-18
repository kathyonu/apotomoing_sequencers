#!/usr/bin/env ruby -w
module Counttext

  include Searchtext
  include Textual

  attr_accessor :sequencetext
  attr_accessor :texts_count

  # this module method generates the text sequence from the user entry, calling on text_searcher(sequencetext) in lib/text.rb
  # which then searches the sequence_text column in the database, at which point the texts_count variable is assigned the count : 20120116

  puts "Counttext Module has been included"  # for use in console or server real time reporting of usage
  
  def text_counter(sequencetext)
    @sequencetext = sequencetext
	@texts = text_searcher(@sequencetext)
	if (@texts === ["no letters remain after processing"])
	  @texts_count = 0
    else
      @texts_count = @texts.count.to_s
    end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Counttext = Counttext