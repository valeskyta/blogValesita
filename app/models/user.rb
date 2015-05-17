class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
	has_many :post, dependent: :destroy
	has_many :comments, dependent: :destroy
  enum role: [:guest, :moderator]
end
