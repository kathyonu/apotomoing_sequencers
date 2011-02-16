class QuoteCell < Cell::Rails

  def display(args)
    @quote = Quote.find:first
    render
  end

end
