#!/usr/bin/env ruby -w
module Searchsingular

  include Textual

## this is still an in progress file, code is not complete

  puts "Searchsingular Module has included the Textual module"  # for use in console

  attr_accessor :sequencetext
  attr_accessor :singular_sequences
    
  def singular_searched
    @singular_searched = singular_searcher(sequencetext)
  end

  ### singular_sequencer(sequencetext) generates the sequence_singular from any sequencetext entered
  def singular_searcher(sequencetext)
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    puts "at line 18 sequencetext is tainted ? " + sequencetext.tainted?.to_s  # => :false
	@singular_sequence = ""
    @singular_sequence = @sequencetext.to_textual.de_comma.de_space.split(//).sort().join.strip.squeeze
    if (@singular_sequence.to_s) == ("") then
      @singular_sequence = "no letters remain after processing, please try another entry"
    else
      @singular_sequences = Sequence.find_by_name("sequence_singular limit 10 ")
     #@singular_sequences = Sequence.find_all_by_name(@singular_sequence)  # finds all
     #@singular_sequences = Sequence.find_by_sql("select * from sequences conditions where sequence_singular like '%elov%' limit 10 ")
     #@singular_sequences = Sequence.find_by_sql("select * from sequences conditions where sequence_singular like '%asdf%' limit 100 ")
     #@singular_sequences = Sequence.find_by_sql("select * from sequences conditions where internal = '1' limit 100 ")
     #@singular_sequences = Sequence.find_by_sql("select * from sequences conditions where anagram = '1' ")
    end
  end


puts = Sequence.find_by_sql("select * from sequences limit 10")
puts = Sequence.find_by_sql("select * from sequences conditions where sequence_singular = 'acghintw' limit 10")

  class String
    include Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchsingular = Searchsingular
