FactoryBot.define do
  factory :user do
    user_name              {"タロウ"}
    email                  {"test@test.com"}
    password               { 111111 }
    password_confirmation  {password}
  end
end
