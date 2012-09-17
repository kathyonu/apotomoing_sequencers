#!/usr/bin/env ruby -w
module Singular
 
  include Textual

  puts "Singular Module has included the Textual module"  # for use in console

  attr_accessor :sequencetext
  attr_accessor :singular_sequence
  attr_accessor :singular_sequenced
    
  def singular_sequenced
    @singular_sequenced = singular_sequencer(sequencetext)
  end

  ### singular_sequencer(sequencetext) generates the sequence_singular from any sequencetext entered
  def singular_sequencer(sequencetext)
    @sequencetext = sequencetext
    @sequencetext.extend Textual
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
	@sequencetextdecommaed = @sequencetextualed.de_comma
	@sequencetextdecommaed.extend Textual
	@sequencetextdespaced = @sequencetextualed.de_comma.gsub(/\s+/, "")
    @singular_sequence = ""
	@singular_sequence = @sequencetextualed.de_comma.split(//).sort().join.strip.squeeze
    if (@singular_sequence.to_s) === ("") then
      @singular_sequence = ["no letters remain after processing"]
    else
      @singular_sequence
    end
  end
 
 class String
  # include Textual
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Singular = Singular
