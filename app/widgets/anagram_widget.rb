class AnagramWidget < Apotomo::Widget
  helper ApplicationHelper

 # responds_to_event :submit

  def anagram
    @anagram = Anagram.new

    render
  end

  def display
    @anagrams = Anagram.find:all

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

    replace :state => :display
  end
  
end
