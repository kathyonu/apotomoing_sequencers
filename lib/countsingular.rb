#!/usr/bin/env ruby -w
module Countsingular

  include Searchsingular
  include Textual

  attr_accessor :sequencetext
  attr_accessor :sequences_count

  # this module method generates the singular sequence from the user entry, calling on singular_searcher(sequencetext) in lib/singjular.rb
  # which then searches the sequence_singular column in the database, at which point the singular_count variable is assigned the count : 20120115

  puts "Countsingular Module has been included"  # for use in console or server real time reporting of usage
  
  def singular_counter(sequencetext)
    sequence = sequencetext
	@sequences = singular_searcher(sequence)
	if @sequences == ["no letters remain after processing"]
	  sequences_count = "no letters remain after processing"
    else
      @singulars_count = @sequences.count.to_s
    end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Countsingular = Countsingular
