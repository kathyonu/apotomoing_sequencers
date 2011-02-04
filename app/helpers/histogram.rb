#!/usr/bin/env ruby -w

module Enumerable
  
  # to_histogram creates a new hash, filling it with the letter(s) and the number of times the letter(s) shown in : String#to_histogram
  def to_histogram
    inject(Hash.new(0)) { |h, x| h[x] += 1; h }
  end

#  def makeproc(&p)
#    p
#  end
  
#  def sorter
#    @sorter = makeproc{|words| words.downcase.split("").sort.to_s.strip}
#  end
  
 ### added this next three line code based on what works in app/helpers/textual.rb :: it may not work !
 # class String
 #  include Enumerable
 # end
 
end