class AnagramWidget < Apotomo::Widget
  helper ApplicationHelper

  after_add do
    root.respond_to_event :submit, :from => :anagram, :with => :submit, :on => :anagram
    #root.respond_to_event :typing, :from => :anagram, :with => :sequence_created, :on => :sequence_created    # to be added in
    #root.respond_to_event :typing, :from => :anagram, :with => :sequence_creation, :on => :sequence_created
    #root.respond_to_event :typing, :from => :anagram, :with => :sequence_complete, :on => :sequence_created
    #root.respond_to_event :typing, :from => :anagram, :with => :sequence_lexigram, :on => :sequence_created
    #root.respond_to_event :typing, :from => :anagram, :with => :sequence_singular, :on => :sequence_created
  end
  
  def anagram
    @anagram = Anagram.new
	render
  end

  def display
    @anagrams = Anagram.find:all
    render
  end

  def submit(evt)
    anagram = Anagram.new(:id => evt[:id], :text => evt[:text], :sequence_created_id => evt[:sequence_created_id], :description => evt[:description], :reference => evt[:reference]).save

    @anagrams = Anagram.find(:all)
    update :view => :display
  end

end
