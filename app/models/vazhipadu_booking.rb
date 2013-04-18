class VazhipaduBooking < ActiveRecord::Base
  belongs_to :user
  belongs_to :vazhipadu
  belongs_to :temple
  belongs_to :devan
  attr_accessible :date_of_vazhipadu
end
