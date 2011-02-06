#!/usr/bin/env ruby -w

module Enumerable
  
  # to_histogram will be used in the sequence_lexigram method in app/cells/sequence_created_widget, a method which is not yet released.
  # to_histogram creates a new hash, filling it with the letter(s) and the number of times the letter(s) show in any entry.
  def to_histogram
    inject(Hash.new(0)) { |h, x| h[x] += 1; h }
  end

end
