class SequenceCreated < ActiveRecord::Base
  attr_accessible :text, :description, :reference
  has_one :anagram
  has_one :quote
  
end
