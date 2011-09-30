class LexiWidget < Apotomo::Widget
  helper ApplicationHelper
  
  responds_to_event :focusout, :with => :lexigram_sequenced

  attr_accessor :sequencetext
  attr_accessor :lexigram_sequenced
  attr_accessor :sequence_lexigram
  
  def display
    if @sequencetext != nil
      @lexigram_sequence = lexigram_sequencer(sequencetext)

      render
    else
      render :display
      #render :text => lexigram_sequence
    end
  end


  # calling lexigram_sequenced returns the @lexigram_sequence
  def lexigram_sequenced
    @lexigram_sequenced = lexigram_sequencer(@sequencetext)
  end
  ### usage in console
    # > lexigram is loaded
    # => nil 
    # > sequencetext = "tests"
	# => "tests"
    # lexigram_sequencer(sequencetext)

    # > @sequencetext = "tests ssst sssst"
    #  => ""tests ssst sssst"
    # > lexigram_sequenced
    # => "esssstt" 
 
    # > sequencetext = "tests stt sttt"
   	# > lexigram_sequencer(sequencetext)
	#  => "essttt"
	 
    # >  @sequencetext = "tests ssst sssst"
    #  => "tests ssst sssst" 
    # > lexigram_sequencer(@sequencetext)
    #  => "esssstt" 

	# > @sequencetext = Time.now.to_s
    #  => "2011-09-25 21:16:29 -0700" 
    # > @sequencetext.to_textual
	#  => "twenty eleven nine twenty five twenty one, one six twenty nine zero seven hundred" 
    # > lexigram_sequenced
    # => "ddeeefhilnnorsttuvwyz" 
    # the time is converted to text by the String#to_textual method called in "./lib/textual-fibering-methods.rb", then sequenced.
    # > @sequencetext
    #  => "2011-09-25 21:16:29 -0700" 
    # > @sequencetext.to_textual
    #  => "twenty eleven nine twenty five twenty one, one five twenty six zero seven hundred" 

private

  ### lexigram_sequencer(sequencetext) generates the sequence_lexigram from any sequencetext entered
  ### see lexigram_sequenced for usage
  def lexigram_sequencer(sequencetext)
    @sequencetext = sequencetext
    @characterscount = @sequencetext.to_textual.split(//).length
    @letters = @sequencetext.to_textual.to_s.de_comma.de_space.split(//).length
    wordscountbase = @sequencetext.to_textual.split(/\W/).length
    @wordscounter = wordscountbase
    @lexigram_sequence = ""
    @lexigram_letters_array = Array.new
    @lexigram_hash_holder = Hash.new{0}
    @lexigram_hash1 = Hash.new{0}
    @lexigram_hash2 = Hash.new{0}
    @keys_values1 = Hash.new{0}
    @keys_values2 = Hash.new{0}
    @words1 = ""
    @words2 = ""
    @words3 = ""
    sentence = @sequencetext.to_textual.de_comma.strip
    @words = sentence.split(/\W/)
    if @wordscounter == 1
      @word1 = @words.shift
      @wordscounter -= 1
      @keys_values1 = @word1.split(//).to_histogram
      @lexigram_letters_array = @keys_values1.collect do | k, v | "#{k}" * v end
      @lexigram_letters = @lexigram_letters_array.join
      @lexigram_sequence = @lexigram_letters.split(//).sort.join
      return @lexigram_sequence
    end
    if @wordscounter == 2
      @word1 = @words.shift
      @wordscounter -= 1
      @keys_values1 = @word1.split(//).to_histogram
      @lexigram_array = @keys_values1.collect do | k, v | "#{k}" * v end
      @lexigram_letters = @lexigram_array.join
      @lexigram_sequence = @lexigram_letters.split(//).sort.join
      @word2 = @words.shift
        @wordscounter -= 1
        @keys_values2 = @word2.split(//).to_histogram
        @lexigram_hash1 = @keys_values1.merge(@keys_values2) do | key, first, second | (first > second)? first : second end unless nil
        @lexigram_array = @lexigram_hash1.collect do | k, v | "#{k}" * v end.sort
        @lexigram_sequence = @lexigram_array.split(//).sort.join
        return @lexigram_sequence
    end
    if @wordscounter >= 3
      while @wordscounter >= 0
        @word1 = @words.shift
        @wordscounter -= 1
        @lexigram_hash1 = @word1.split(//).to_histogram unless nil
        @word2 = @words.shift
        @wordscounter -= 1
        @lexigram_hash2 = @word2.split(//).to_histogram unless nil
        @keys_values1 = @lexigram_hash1.merge(@lexigram_hash2) do | key, first, second | (first > second)? first : second end unless nil
        @keys_values1
        @lexigram_hash_holder1 = @keys_values1
        @lexigram_sequence = @lexigram_hash_holder1.collect do | k, v | "#{k}" * v end.sort.join
        loop do
          @word3 = nil
          @word3 = @words.shift unless nil
            if @word3 == nil
              return @lexigram_sequence
                break if @wordcounter == 0
            else
              @lexigram_sequence = nil
              @wordscounter -= 1
              @lexigram_hash2 = @word3.split(//).to_histogram unless nil
              @keys_values2 = @lexigram_hash_holder1.merge(@lexigram_hash2) do |key, first, second| (first > second)? first : second end unless nil
              @lexigram_hash_holder2 = @keys_values2 unless nil
              @lexigram_hash_holder1 = @keys_values2 unless nil
              @lexigram_letters_array = @lexigram_hash_holder2.collect do | k, v | "#{k}" * v end.sort
              @lexigram_sequence = @lexigram_hash_holder2.collect do | k, v | "#{k}" * v end.sort.join
            end
          end
        end
      end
    end
  end
  @lexigram_sequence
