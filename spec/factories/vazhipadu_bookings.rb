# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vazhipadu_booking do
    user nil
    vazhipadu nil
    temple nil
    devan nil
    date_of_vazhipadu "2013-04-07"
  end
end
