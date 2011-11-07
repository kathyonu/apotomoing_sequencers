class Sequence < ActiveRecord::Base

  attr_accessible :id, :sequence_text, :sequence_creation, :sequence_complete, :sequence_lexigram, :sequence_singular, :description, :reference, :anagram, :name, :phrase, :sexualities, :external, :internal

#  self.extend(Lexigram)
#  self.extend(Textual)
#  self.extend(Histogram)
  
end
