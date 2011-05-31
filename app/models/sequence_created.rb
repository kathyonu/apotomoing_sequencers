class SequenceCreated < ActiveRecord::Base
  attr_accessible :id, :sequence_text

  has_one :anagram
  has_one :quote
  
end
