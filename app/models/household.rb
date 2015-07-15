class Household < ActiveRecord::Base

  validates :household_name, presence: {message: 'You must enter a Household name'}
  validates :household_name, uniqueness: {message: 'We already have that Household'}
end
