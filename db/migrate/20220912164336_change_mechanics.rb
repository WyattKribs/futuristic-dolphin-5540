class ChangeMechanics < ActiveRecord::Migration[5.2]
  def change
    change_column :mechanics, :years_of_experience, :integer, using: 'years_of_experience::integer'
  end
end
