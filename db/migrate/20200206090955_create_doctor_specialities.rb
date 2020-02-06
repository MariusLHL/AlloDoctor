class CreateDoctorSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_specialities do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :speciality, index:  true 
      
      t.timestamp
    end
  end
end
