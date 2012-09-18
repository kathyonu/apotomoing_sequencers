#!/usr/bin/env ruby -w
module Searchsingular

  include Textual

  # this module generates the singular sequence from the user entry,
  # then searches the sequence_singular column in the database : code finished on 20111225

  puts "Searchsingular Module has included the Textual module"  # for use in console or server real time reporting of usage

  attr_accessor :sequences
  attr_accessor :sequencetext
  attr_accessor :singular_sequence
    
    # singular_searcher(sequencetext) generates the sequence_singular from any sequencetext entered, then
    # if a singular sequence is generated it goes on to search the database for all matches
	# Note: an entry of   ") # ! \ ( ^ )_-"   produces no letters
  def singular_searcher(sequencetext)
    @sequencetext = sequencetext
    @sequences = []
    @singular_sequence = ""
    @sequencetext.extend Textual
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    @sequencetextdecommaed = @sequencetextualed.de_comma
    @sequencetextdecommaed.extend Textual
    @sequencetextdespaced = @sequencetextdecommaed.de_space
    @sequencetextdespaced.extend Textual
	@singular_sequence = @sequencetextdespaced.split(//).sort().join.squeeze.strip
    if (@singular_sequence === "") then
      @sequences = ["no letters remain after processing"]
    else
      @sequences = Sequence.find_all_by_sequence_singular(@singular_sequence)  # Array
     end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchsingular = Searchsingular
