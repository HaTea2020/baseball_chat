class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :team
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname
    validates :team_id
  end
  validates :team_id, numericality: {other_than: 1}
  def remember_me
    true
  end
 
  has_many :rooms
  has_many :messages
end
