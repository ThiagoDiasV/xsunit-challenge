class ChangeDefaultValueLastSurvivorReport < ActiveRecord::Migration[5.2]
  def change
    change_column :survivors, :last_survivor_name_abduct_report, :string, :null => true
  end
end
