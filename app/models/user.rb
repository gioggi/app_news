class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable
  validates_presence_of :first_name, :last_name, :email, :password
  validates :email, uniqueness: true
  has_many :articles

  def name
    "#{last_name} #{first_name}"
  end
end
