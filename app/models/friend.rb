class Friend < ActiveRecord::Base
  has_one  :date
  has_one  :phone_number
  has_one  :text
end