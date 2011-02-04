class SequenceCreatedWidget < Apotomo::Widget
  responds_to_event :submit, :on => :anagram, :with => :write, :on => :sequence_created

  def sequence_created
    @sequence_created = Anagram.new(params(:text => text.to_textual.de_comma.strip))
    render
  end

  def sequence_creation
    @sequence_creation = sequence_created.de_space
    render
  end

  def sequence_complete
    @sequence_complete = sequence_created.split(//).sort.join.strip
    render
  end

  def sequence_lexigram
	@sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse  # TODO complete the Lexigram code, meanwhile substitute the reverse sequence as the dataum
    render
  end

  def sequence_singular
    @sequence_singular = sequence_complete.squeeze
    render
  end

  def write
    @sequence_created = Anagram.text.to_textual.de_comma.strip
    @sequence_creation = sequence_created.de_space
    @sequence_complete = sequence_created.split(//).sort.join.strip
	@sequence_lexigram = sequence_created.split(//).sort.join.strip.reverse  # TODO complete the code, meanwhile substitute the reverse sequence as the dataum
    @sequence_singular = sequence_complete.squeeze

    render
  end

  def display
    render
  end

end
