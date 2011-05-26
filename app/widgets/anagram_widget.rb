class AnagramWidget < Apotomo::Widget
  helper ApplicationHelper

  after_add do
    root.respond_to_event :submit, :from => :sequencer, :with => :submit, :on => :anagram, :passing => :root
  end
  
  def anagram
    @anagram = Anagram.new

    render
  end

  def display
    @anagrams = Anagram.order("id DESC limit(10)")

    render
  end

  def form
    render
  end

  def list
    render
  end
  
  def submit(event)
    anagram = Anagram.new(:id => event[:id], :sequence_created_id => event[:sequence_created_id], :text => event[:text], :description => event[:description], :reference => event[:reference]).save
    @anagrams = Anagram.find(:all)
    trigger :newSequenceCreated

    update :view => :display
  end

end
