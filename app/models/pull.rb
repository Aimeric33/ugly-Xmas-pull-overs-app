class Pull < ApplicationRecord

  SIZES = ["XS", "S", "M", "L", "XL", "XXL"]
  include PgSearch::Model

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true, inclusion: { in: SIZES }
  validates :price, presence: true
  validates :photo, presence: true

  pg_search_scope :global_search,
    against: [ :title, :description, :size ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
