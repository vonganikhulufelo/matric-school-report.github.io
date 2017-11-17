class AddDirectorsToReport < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :pass_rate2015, :decimal
    add_column :reports, :failure_rate2015, :decimal
    add_column :reports, :pass_rate2016, :decimal
    add_column :reports, :failure_rate2016, :decimal
  end
end
