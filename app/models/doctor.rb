class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :doctor_specialities
  has_many :specialities, through: :doctor_specialities
  belongs_to :city
end