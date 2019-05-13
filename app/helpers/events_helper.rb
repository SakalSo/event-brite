module EventsHelper

  def format_price(event)
    if event.free?
      "free"
    else
      number_to_currency(event.price)
    end
  end

  def spots(event)
    if event.seatLeft.zero? || event.seatLeft.negative?
      "No seat left"
    else
      event.seatLeft
    end
  end

end
