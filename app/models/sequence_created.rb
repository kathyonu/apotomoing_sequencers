class SequenceCreated < ActiveRecord::Base
  attr_accessible :id, :sequence_text, :sequence_creation, :sequence_complete, :sequence_lexigram, :sequence_singular
  
  has_one :anagram
  has_one :quote
  
end
