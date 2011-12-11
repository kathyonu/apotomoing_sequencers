class SequenceCreatedWidget < Apotomo::Widget
  helper ApplicationHelper
  
 #responds_to_event :submit
 #responds_to_event :newSequenceCreated, :with => :update, :passing => :root
 #responds_to_event :submit, :from => :sequence_created, :with => :submit, :on => :sequence_created, :passing => :root
 #responds_to_event :submit, :from => :sequence_created, :with => :submit, :on => :anagram

 #TODO this file needs cleanup
 
  def display
    render
  end

  def form
    render
  end

  ### #TODO this needs to be converted for ajax to run, not apotomo : this note has been here a long time.
  ### #update on todo : five sequencers now working on sequence_created widget via jQuery in almost-ready.js : 20111211 
  ### #TODO these methods below are not being used by the system (or are they as widget's accessors) and i believe can now be deleted as the sequencerings are being done by the js.erb files in app/views/_text_sequenced.js.erb etc
  def sequence_text(evt)
    anagram_text_entry = evt[:anagram_text]
    @sequence_text = anagram_text_entry.to_textual.de_comma.strip

    render :view => :sequence_text
  end

  def sequence_creation(sequence_text)
    @sequence_creation = sequence_text.de_space

    render :view => :sequence_creation
  end

  def sequence_complete(sequence_text)
    @sequence_complete = sequence_text.split(//).sort.join.strip

    render :view => :sequence_complete
  end

#  def sequence_lexigram(sequence_complete_reverse)
#    @sequence_complete_reverse = sequence_text.split(//).sort.join.strip.reverse

#    render :view => :sequence_complete_reverse
#  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
#  def lexigram_sequencer(sequencetext)
#    @sequence_lexigram = lexigram_sequencer(sequencetext)
#
#    render :view => :sequence_lexigram
#  end

  def sequence_singular(sequence_complete)
    @sequence_singular = sequence_complete.squeeze

    render :view => :sequence_singular
  end

  # TODO complete the lexigram algorithm to code, meanwhile substitute the reverse sequence as the dataum
  def submit(evt)
    #@sequence_created = SequenceCreated.new(evt[:id]).save           # or anagram = Anagram.find(evt[:id])
	@sequence_created = SequenceCreated.new(:sequence_text => evt[:sequence_text], :sequence_creation => evt[:sequence_creation], :sequence_complete => evt[:sequence_complete], :sequence_lexigram => evt[:sequence_lexigram], :sequence_singular => evt[:sequence_singular])
    if @sequence_created.update_attributes(evt[:sequence_created])
      trigger :newSequenceCreated
    end
  end

  def update(evt)

    replace :view => :display
  end
  
end
