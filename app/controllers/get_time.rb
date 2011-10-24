class GetTimeController < ActionController::Base
#  helper ApplicationHelper

  def show
    @get_time = "#{Time.now.to_s}"
  end

end
