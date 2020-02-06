class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, class_name: "Doctor"
      t.belongs_to :patient, class_name: "Patient"
      t.belongs_to :city, index: true
      t.datetime :date
    end
  end
end
