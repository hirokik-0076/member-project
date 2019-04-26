class CreateMembersProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :members_projects, id: false do |t|
      t.belongs_to :member, index: true
      t.belongs_to :project, index: true
    end
  end
end
