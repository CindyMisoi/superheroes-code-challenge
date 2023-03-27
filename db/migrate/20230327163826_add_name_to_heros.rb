class AddNameToHeros < ActiveRecord::Migration[7.0]
  def change
    add_column :heros, :name, :string
  end
end
