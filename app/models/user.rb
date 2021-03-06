class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  has_secure_password

  has_many :projects, through: :memberships
  has_many :memberships

  def full_name
    "#{first_name} #{last_name}"
  end

end
