class Role < ActiveRecordbase
  has_many :projects, through: :memberships
  has_many :memberships
end
