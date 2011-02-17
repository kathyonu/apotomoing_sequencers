class QuoteCell < Cell::Rails

  def display(args)
    @quote = Quote.find:first
    render
  end

  def display2(args)
    @quote = Quote.find:last
    render
  end

end
