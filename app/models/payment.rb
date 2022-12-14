class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :groups

  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :author_id, presence: true, numericality: { greater_than: 0 }
end
