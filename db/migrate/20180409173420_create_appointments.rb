class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :patient, index: true, foreign_key: true
      t.string :doctor

      t.timestamps null: false
    end
  end
end
