module EventsHelper
  def format_price(event)
    if event.free?
      "free"
    else
      number_to_currency(event.price)
    end
  end
end
