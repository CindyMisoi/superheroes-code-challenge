class AddHeroIdToHeroPowers < ActiveRecord::Migration[7.0]
  def change
    add_column :hero_powers, :hero_id, :integer
  end
end
