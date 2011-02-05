class AnagramWidget < Apotomo::Widget
  responds_to_event :submit, :with => :write
    
  # TODO anagram method and view are not being used, can be removed.
  def anagram
  end

  def display_form
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
