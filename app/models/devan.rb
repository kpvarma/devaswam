class Devan < ActiveRecord::Base
  belongs_to :temple
  attr_accessible :description, :name
end
