class Event < ApplicationRecord
  has_many :registrations, dependent: :destroy
  validates :name, :location, presence: true
  validates :description, length: { minimum: 35 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :image, content_type: /^image\/(png|gif|jpeg)/
  def free?
    price.blank? || price.zero?
  end
  def self.upcoming
    where("events.start_at >= ?",Time.now).order("start_at") #where (..) didnt work because of that space between where and ()
  end
  def seatLeft
    capacity - registrations.count
  end

end
