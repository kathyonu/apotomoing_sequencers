#!/usr/bin/env ruby -w
module Countsingular

  include Searchsingular
  include Textual

  attr_accessor :sequencetext
  attr_accessor :singulars_count

  # this module method generates the singular sequence from the user entry, calling on singular_searcher(sequencetext) in lib/singular.rb
  # which then searches the sequence_singular column in the database, at which point the singulars_count variable is assigned the count : 20120115

  puts "Countsingular Module has been included"  # for use in console or server real time reporting of usage
  
  def singular_counter(sequencetext)
    @sequencetext = sequencetext
	@singulars = singular_searcher(@sequencetext)
	if @singulars === ["no letters remain after processing"]
	  @singulars_count = "0"
    else
      @singulars_count = @singulars.count.to_s
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
