module ApplicationHelper

include Textual

require './lib/textual-fibering-methods.rb'

  # GET TIME  /apotomoing_sequencers/app/helpers/application_helper.rb
  # ajaxing time
  def get_time
    sleep(0.9)
    render :text => "  Time Item .. " + "#{Time.now.to_s} "
	nil
  end
  
end
