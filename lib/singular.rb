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
    puts "at line 19 sequencetext is tainted ? " + sequencetext.tainted?.to_s  # => :false
    @sequencetextualed = @sequencetext.to_textual
    @sequencetextualed.extend Textual
    puts "at line 22 the result of sequencetext.to_textual : " + "#{@sequencetextualed}"
	@sequencetextdecommaed = @sequencetextualed.de_comma
	@sequencetextdecommaed.extend Textual
	puts "at line 25 the result of sequencetext.to_textual.de_comma : " + "#{@sequencetextdecommaed}"
	@sequencetextdespaced = @sequencetextualed.de_comma.gsub(/\s+/, "")
    puts "at line 27 the result of sequencetext.to_textual.de_comma.de_space : " + "#{@sequencetextdespaced}"
    @characterscount = @sequencetextualed.split(//).length
    puts "at line 29 the @ characterscount : @sequencetextualed.split(//).length : " + "#{@characterscount}"
    @letters = @sequencetextualed.de_comma.split(//).join.strip.length
	puts "at line 31 the @ letters variable count : @sequencetextualed.de_comma.de_space.split(//).length " + "#{@letters}"
    @singular_sequence = ""
	@singular_sequence = @sequencetextualed.de_comma.split(//).sort().join.strip.squeeze
    if (@singular_sequence.to_s) == ("") then
      @singular_sequence = "no letters remain after processing"
    else
      @singular_sequence
    end
  end
 
  class String
    include Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Singular = Singular
