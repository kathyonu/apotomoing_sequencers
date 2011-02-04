class AnagramWidget < Apotomo::Widget
  responds_to_event :submit, :with => :write
    
  def anagram
    @anagram = Anagram.new
    render
  end

  
  def write
    @anagram = Anagram.new(params(:anagram))
	@anagram = anagram.update_attributes(params(:anagram))
	
    render :display_form
  end

  def display_form
    render
  end

end
