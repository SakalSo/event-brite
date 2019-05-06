class Event < ApplicationRecord
  def free?
    price.blank? || price.zero?
  end
  def self.upcoming
    where("events.start_at <= ?",Time.now).order("start_at") #where (..) didnt work because of that space between where and ()
  end
end
