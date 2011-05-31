class Anagram < ActiveRecord::Base
  attr_accessible :id, :anagram_text, :description, :reference
  belongs_to :sequence_created

end
