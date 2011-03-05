class QuoteCell < Cell::Rails
  helper ApplicationHelper

  def display
    @quote = Quote.find:first
    render
  end

  def display2
    @quote2 = Quote.find:last
    render
  end

end
