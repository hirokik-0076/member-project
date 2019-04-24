class AddNumberToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :nember, :integer
  end
end
