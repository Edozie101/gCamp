class Addcolumnstousers < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :role_id
    end
    create_table :roles do |t|
      t.string :title
    end
    add_column :tasks, :project_id, :integer
    add_column :users, :password_digest, :string
    change_column :tasks, :completed, :boolean, default: false, null: false

  end
end
