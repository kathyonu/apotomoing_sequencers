module ApplicationHelper

  require 'textual'
  require 'lexigram'
  require 'histogram'

#  include Lexigram
#  include Textual
#  include Histogram
# require 'textual'
# require 'lexigram'
# require 'histogram'
# require 'histogram'
# require 'lexigram.rb'
# require 'textual.rb'
# require './app/helpers/histogram.rb'
# require './app/helpers/histogram.rb'
# include Lexigram
# include Textual
# include Textual
# include Textual
# include Textual  : should be included by the include Lexigram call above, and it proves to be so :
#  require './app/helpers/histogram.rb'
#  require './app/helpers/lexigram.rb'
#  require './app/helpers/lexigram.rb'
#  require './app/helpers/lexigram.rb'
#  require './app/helpers/textual.rb'
#  require './app/helpers/textual.rb'
#  require './app/helpers/textual.rb'
#  require './app/helpers/textual.rb' # should be called by include Lexigram above



#  require './lib/sequencerings/textualfibers.rb' # for use in console



  #  will-i-am:apotomoing_sequencers William$ rails c -s
  #    Loading development environment in sandbox (Rails 3.0.10)
  #    Any modifications you make will be rolled back on exit
  #    > include ApplicationHelper
  #    Textual Module has been directly loaded from textual.rb
  #    Histogram Module has been directly loaded
  #    application helper is loaded directly
  #     => Object 
  #    > @sequencetext = "testst"
  #     => "testst" 
  #    > lexigram_sequenced
  #     => "essttt" 
  
### this 'puts' command below is for use in the console only
## comment the puts out and you will know when this is loaded
 puts "application helper has been loaded directly by application controller"

  # GET TIME  /apotomoing_sequencers/app/helpers/application_helper.rb
  # ajaxing time
#  def get_time
#    sleep(0.9)
#    render :text => "  Time Item .. " + "#{Time.now.to_s} "
#	nil
#  end

end
