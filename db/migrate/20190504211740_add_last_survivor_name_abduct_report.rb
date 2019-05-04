class AddLastSurvivorNameAbductReport < ActiveRecord::Migration[5.2]
  def change
    add_column :survivors, :last_survivor_name_abduct_report, :string
  end
end
