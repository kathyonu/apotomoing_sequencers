class QuoteCell < Cell::Rails

  def display
    @quote = Quote.find:first
    render
  end

  def display2
    @quote2 = Quote.find:last
    render
  end

end
