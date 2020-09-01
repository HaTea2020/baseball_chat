class Message < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :team
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :comment, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
