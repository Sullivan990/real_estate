class Building < ActiveRecord::Base
<<<<<<< HEAD
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true
=======

  def self.states
    [
      "AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL",
      "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA",
      "MD", "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE",
      "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI",
      "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI", "WV", "WY"
    ]
  end

  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true, inclusion: { in: Building.states }
  validates :postal_code, presence: true

>>>>>>> 2e8b5625662d36b73d22295919c15f792e705a37
end
