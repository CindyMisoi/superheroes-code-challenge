class AddSuperNameToHeros < ActiveRecord::Migration[7.0]
  def change
    add_column :heros, :super_name, :string
  end
end
