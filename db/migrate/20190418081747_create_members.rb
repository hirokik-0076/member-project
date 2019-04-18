class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :profile
      t.string :skill
      t.string :project
      t.string :coment

      t.timestamps
    end
  end
end
