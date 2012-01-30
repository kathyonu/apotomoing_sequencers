#!/usr/bin/env ruby -w
module Searchanagrams

  include Textual
  
  require 'set'

  # BE AWARE THIS CODE IS NOT COMPLETE, NOT FULLY FUNCTIONING
  # SEEK the PHRASE : herein lies the problem 
  
  # this module generates the anagrams search after processing the sequence_singular of the user entry
  # the idea is to search the subsets of the user's entry, after it has been converted to its own set,
  # then searches the sequence_singular column in the database : code commented out unfinished as of 20120129

  puts "Searchanagrams Module has included the Textual module"  # for use in console or server real time reporting of usage

  attr_accessor :sequences
  attr_accessor :sequencetext
  attr_accessor :singular_sequence
  attr_accessor :singular_sequences
  attr_accessor :anagramsearch_searched
# attr_accessor :anagrams_count : future use
    
  def anagramsearch_searched(sequencetext)
    @anagramsearch_searched = anagramsearch_searcher(sequencetext)
  end

  def anagramsearch_searcher(sequencetext)
    @id = 0
    @childsequence = ''
    @childset = []
	@motherset = []
    @sequences = []
    @singular_sequence = ""
    @singular_sequences = []
    @sequencetext = sequencetext unless nil
    @sequencetext.extend Textual unless nil
    @sequencetextualed = @sequencetext.to_textual unless nil
    @sequencetextualed.extend Textual unless nil
    @sequencetextdecommaed = @sequencetextualed.de_comma unless nil
    @sequencetextdecommaed.extend Textual unless nil
    @sequencetextdespaced = @sequencetextdecommaed.de_space unless nil
    @sequencetextdespaced.extend Textual unless nil
    @singular_sequence = @sequencetextdespaced.split(//).sort().join.squeeze.strip unless nil
    if (@singular_sequence) == ("") then
      @sequences = ["no letters remain after processing"]
    else
      @sequences = Sequence.find_all_by_sequence_singular(@singular_sequence)
#     still working on the code below : 20120129 : which will replace the one line above
#      @motherset = @singular_sequence.split(//).to_set
#      loop do
#        @id += 1
#        if @id > 10      # here for development only for quick execution of the process
#          break          # should be removed when codes are done    : 20120129
#        else             #TODO remove this limit when code is done
#        @childsequence = Sequence.find_by_id(@id) unless nil
#        if (@childsequence == nil)
#          next
#        else
#          @sequence_singular = @childsequence.sequence_singular unless nil
#          @childset = @sequence_singular.split(//).to_set unless nil
#          if ((@childset.subset? @motherset) == true)
#            @sequences << @childsequence    # herein lies the problem, the @sequences value is not in the form 
#          else                              # required by the list.html.erb format.  what to do ? 20120129
#            @sequences                      # ActiveRecord::Relation   < should be.   but it is now an array.
#          end
#        end
#      end
#      @sequences
#     end
    end
  end

  class String
    self.extend Textual
  end
  
  class Sequencetext
    include Textual
  end
  
end
$Searchanagrams = Searchanagrams
