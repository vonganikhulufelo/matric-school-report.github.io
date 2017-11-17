class AddDirectorToReport < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :pass_rate, :decimal
    add_column :reports, :failure_rate, :decimal
  end
end
