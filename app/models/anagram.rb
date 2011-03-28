class Anagram < ActiveRecord::Base
  attr_accessible :id, :text, :description, :reference
  belongs_to :sequence_created

end
