class AnagramWidget < Apotomo::Widget
  responds_to_event :submit, :from => :anagram, :with => :write
    
  def anagram
    @anagram = Anagram.new
	render
  end

  def display
    @anagrams = Anagram.find:all
    render
  end
  
  def write
    @anagram = Anagram.create(params(:anagram))
	@anagram = anagram.update_attributes(params(:anagram))
    @anagrams = Anagram.find:all
    update :display
  end

end
