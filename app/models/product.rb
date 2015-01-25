class Product < ActiveRecord::Base
  has_many :transactions, dependent: :destroy
  validates :ic, presence: true
end
