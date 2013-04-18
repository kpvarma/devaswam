class Vazhipadu < ActiveRecord::Base
  belongs_to :temple
  belongs_to :devan
  attr_accessible :description, :name, :rate
end
