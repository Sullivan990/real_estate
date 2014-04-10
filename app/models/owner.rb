class Owner < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  has_many :buildings

  def full_name
    "#{first_name} #{last_name}"
  end
end
