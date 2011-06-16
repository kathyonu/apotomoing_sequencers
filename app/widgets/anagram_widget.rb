class AnagramWidget < Apotomo::Widget
  helper ApplicationHelper

  #responds_to_event :submit, :from => :anagram, :with => :submit, :on => :anagram, :passing => :root
  responds_to_event :newSequenceCreated, :with => :update, :on => :anagram, :passing => :root

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
    @anagram = Anagram.new(:anagram_text => evt[:anagram_text], :description => evt[:description], :reference => evt[:reference])
    if @anagram.update_attributes(evt[:anagram])
      replace :state => :display
    else
      refresh_render :view => :display
    end
  end

  def update(evt)

    refresh_render :state => :display
  end
  
end
