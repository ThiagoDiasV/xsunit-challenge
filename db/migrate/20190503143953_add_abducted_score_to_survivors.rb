class AddAbductedScoreToSurvivors < ActiveRecord::Migration[5.2]
  def change
    add_column :survivors, :abduct_score, :integer
  end
end
