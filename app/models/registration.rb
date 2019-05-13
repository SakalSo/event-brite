class Registration < ApplicationRecord
  belongs_to :event
  SELECT_HOW_HEARD_OPTION = ["Facebook","Twitter","Blog Post"]
  validates :email, format:{with: /(\S+)@(\S+)/}
  validates :how_heard, inclusion:{ in: SELECT_HOW_HEARD_OPTION }
end
