class Membership < ActiveRecord::Base
  belongs_to :project
  belongs_to :role
  belongs_to :user

  def already_exists
    if Membership.where(project_id:project_id,user_id:user_id).length > 0 && !self.id
      errors.add(:user_id, "This membership already exists")
    end
  end


end
