class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile
      t.string :skill
      t.string :project
      t.string :id

      t.timestamps
    end
  end
end
