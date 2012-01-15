module ApplicationHelper

  include Singular
  include Searchsingular
  include Searchlexigram
  include Searchcomplete
  include Searchcreation
  include Searchtext
  include Text
  include Creation
  include Complete
  include Histogram
  include Textual
  include Lexigram
  
  puts "included searchsingular and searchlexigram modules"
  puts "included singular, text, creation, complete, histogram, textual and lexigram modules, in that order using application/helper" # console use
  puts "application helper has been loaded directly by application controller" # console use

  ### usage :
  # will-i-am:apotomoing_sequencers William$ rails c -s
  #    Loading development environment in sandbox (Rails 3.0.10)
  #    Any modifications you make will be rolled back on exit
  # > include ApplicationHelper
  #    Textual Module is loaded
  #    Singular Module has included the Textual module
  #    Text Module has included the Textual module
  #    Creation Module has included the Textual module
  #    Complete Module has included the Textual module
  #    Histogram Module is loaded
  #    Lexigram Module has included Histogram and Textual modules
  #    included singular, text, creation, complete, histogram, textual and lexigram modules, in that order using application/helper
  #    application helper has been loaded directly by application controller
  #     => Object 
  # > @sequencetext = "the lexigram_sequencer, rocks" 
  #  => "the lexigram_sequencer rocks" 
  # > lexigram_sequenced
  #    at line 37 sequencetext is tainted ? false
  #    at line 40 the result of sequencetext.to_textual : the lexigram sequencer, rocks
  #    at line 43 the result of sequencetext.to_textual.de_comma : the lexigram sequencer rocks
  #    at line 45 the result of sequencetext.to_textual.de_comma.de_space : thelexigramsequencerrocks
  #    at line 47 the @ characterscount : @sequencetextualed.split(//).length : 29
  #    at line 49 the @ letters variable count : @sequencetextualed.de_comma.de_space.split(//).length 25
  #  => "aceeeghiklmnoqrstux" 

   # GET TIME  /apotomoing_sequencers/app/helpers/application_helper.rb
   # ajaxing time  : old code
#  def get_time
#    sleep(0.9)
#    render :text => "  Time Item .. " + "#{Time.now.to_s} "
#	nil
#  end

end
