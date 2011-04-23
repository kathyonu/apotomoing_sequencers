class SequencerController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:sequencer)
    root << widget(:sequence_created, :sequence_created => @sequence_created)
    root << widget(:anagram, :anagram => @anagram)
    root.respond_to_event :submit, :from => :anagram, :with => :submit, :on => :anagram
    root.respond_to_event :submit, :from => :anagram, :with => :submit, :on => :sequence_created
  end

  def display
  end

end
