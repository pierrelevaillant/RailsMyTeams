class CreateConvocations < ActiveRecord::Migration
  def change
    create_table :convocations do |t|
      t.string :opposing_team
      t.boolean :home
      t.datetime :date
      t.text :appointment_place
      t.time :appointment_time
      t.time :game_time
      t.text :informations

      t.timestamps null: false
    end
  end
end
