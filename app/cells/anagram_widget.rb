class AnagramWidget < Apotomo::Widget
  responds_to_event :submit, :with => :write
    
  def anagram
    @anagram = Anagram.new
	render
  end

  def display
    @anagrams = Anagram.find:all
    render
  end
  
  def write
    @anagram = Anagram.new(params(:anagram)).save
	@anagram = anagram.update_attributes(params(:anagram))
    @anagrams = Anagram.find:all
    update :display_form
  end

end
