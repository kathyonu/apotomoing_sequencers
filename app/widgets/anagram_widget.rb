class AnagramWidget < Apotomo::Widget
  helper ApplicationHelper

  responds_to_event :submit, :from => :anagram, :with => :submit, :on => :anagram, :passing => :root
  responds_to_event :newAnagram, :with => :update

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
  
  def submit(evt)
    anagram = Anagram.new(:anagram_text => evt[:anagram_text], :description => evt[:description], :reference => evt[:reference]).save
    #@anagram.update_attributes(evt[:anagram])

	@anagrams = Anagram.find(:all)
    #anagram = Anagram.new(:id => evt[:id], :text => evt[:text], :sequence_created_id => evt[:sequence_created_id], :description => evt[:description], :reference => evt[:reference]).save
    trigger :newAnagram

    update :state => :display
  end


  def update(evt)

    replace :state => :display
  end
  
end
