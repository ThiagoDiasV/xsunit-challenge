class AddDefaultAbductScore < ActiveRecord::Migration[5.2]
  def change
    change_column :survivors, :abduct_score, :integer, :default => 0
  end
end
