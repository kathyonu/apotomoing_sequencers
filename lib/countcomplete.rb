#!/usr/bin/env ruby -w
module Countcomplete

  include Searchcomplete
  include Textual

  attr_accessor :sequencetext
  attr_accessor :completes_count

  # this module method generates the complete sequence from the user entry, calling on complete_searcher(sequencetext) in lib/singular.rb
  # which then searches the sequence_complete column in the database, at which point the completes_count variable is assigned the count : 20120116

  puts "Countcomplete Module has been included"  # for use in console or server real time reporting of usage
  
  def complete_counter(sequencetext)
    @sequencetext = sequencetext
	@completes = complete_searcher(@sequencetext)
	if (@completes === ["no letters remain after processing"])
	  @completes_count = 0
    else
      @completes_count = @completes.count.to_s
    end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Countcomplete = Countcomplete