class Building < ActiveRecord::Base

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

  belongs_to :owner

end
