class SequenceCreated < ActiveRecord::Base

  attr_accessible :id, :text, :description, :reference

  has_one :anagram
  has_one :quote
  
end
