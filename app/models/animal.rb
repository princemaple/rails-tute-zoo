class Animal < ActiveRecord::Base
  belongs_to :location
  belongs_to :species
end
