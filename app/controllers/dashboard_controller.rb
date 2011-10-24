class DashboardController < ApplicationController
  include Apotomo::Rails::ControllerMethods
  include ApplicationHelper

  has_widgets do |root|
    root << widget(:anagram)
    root << widget(:sequence_created)
    root << widget(:sequencer)
    #root.respond_to_event :submit, :from => :anagram, :with => :submit, :on => :sequence_created, :passing => :root
    #root.respond_to_event :newSequenceCreated, :with => :submit, :on => :anagram, :passing => :root
    #root.respond_to_event :submit, :from => :sequence_created, :with => :submit, :on => :anagram, :passing => :root
  end
 
  def index
  end

end
