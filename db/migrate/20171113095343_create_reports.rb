class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :emis
      t.string :centre_no
      t.string :school_name
      t.integer :wrote_2014
      t.integer :passed_2014
      t.integer :wrote_2015
      t.integer :passed_2015
      t.integer :wrote_2016
      t.integer :passed_2016

      t.timestamps
    end
  end
end
