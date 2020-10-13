class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :store_id, presence: { strict: true }

  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  
  private
    after_create do
      self.password = "password"
    end


end
