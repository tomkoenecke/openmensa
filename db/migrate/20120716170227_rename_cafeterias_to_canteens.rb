class RenameCafeteriasToCanteens < ActiveRecord::Migration[4.2]
  def change
    rename_table :cafeterias, :canteens
  end
end
