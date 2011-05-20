class SequenceCreated < ActiveRecord::Base
  has_one :anagram
  has_one :quote
  
end
