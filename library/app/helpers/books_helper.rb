module BooksHelper
  def price_in_dollars(price_in_cents)
    number_to_currency(price_in_cents/100.0)
  end
end
