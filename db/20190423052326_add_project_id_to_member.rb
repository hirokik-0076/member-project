class AddProjectIdToMember < ActiveRecord::Migration[5.1]
  def change
    add_reference :members, :project
  end
end
