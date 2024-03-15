class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum user_role: [:admin, :student, :teacher]

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  def full_nameS
    "#{first_name} #{last_name}"
  end
end
