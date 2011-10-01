class GetTimeCell < Cell::Rails
  helper ApplicationHelper

  def show
    @get_time = Time.now.to_s
    render
  end

end
