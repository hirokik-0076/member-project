class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :content
      t.string :skill
      t.string :status
      t.string :member

      t.timestamps
    end
  end
end
