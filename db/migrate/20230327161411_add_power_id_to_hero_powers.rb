class AddPowerIdToHeroPowers < ActiveRecord::Migration[7.0]
  def change
    add_column :hero_powers, :power_id, :integer
  end
end
