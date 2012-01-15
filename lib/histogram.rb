#!/usr/bin/env ruby -w
module Histogram

  puts "Histogram Module is loaded"  # for use in console

    # to_histogram is used in the lexigram_sequencer(sequencetext) method : lib/lexigram.rb 
    # to_histogram creates a new hash, filling it with the letter(s) and 
    # the max number of times the letter(s) show in any one word or name-part
  def to_histogram
    inject(Hash.new(0)) { |h, x| h[x] += 1; h }
  end

end
$Histogram = Histogram
