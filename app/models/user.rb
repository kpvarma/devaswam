class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :gender, :nakshatram, :name
end
