class Sequence < ActiveRecord::Base

  attr_accessible :sequence_text, :sequence_creation, :sequence_complete, :sequence_lexigram, :sequence_singular, :description, :reference, :anagram, :name, :phrase, :sexualities, :external, :internal, :lense

end
