class AddDescriptionToPowers < ActiveRecord::Migration[7.0]
  def change
    add_column :powers, :description, :string
  end
end
