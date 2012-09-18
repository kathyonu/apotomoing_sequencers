#!/usr/bin/env ruby -w
module Countcreation

  include Searchcreation
  include Textual

  attr_accessor :sequencetext
  attr_accessor :creations_count

  # this module method generates the creation sequence from the user entry, calling on creation_searcher(sequencetext) in lib/creation.rb
  # which then searches the sequence_creation column in the database, at which point the creations_count variable is assigned the count : 20120116

  puts "Countcreation Module has been included"  # for use in console or server real time reporting of usage
  
  def creation_counter(sequencetext)
    @sequencetext = sequencetext
	@creations = creation_searcher(@sequencetext)
	if (@creations === ["no letters remain after processing"])
	  @creations_count = 0
    else
      @creations_count = @creations.count.to_s
    end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Countcreation = Countcreation