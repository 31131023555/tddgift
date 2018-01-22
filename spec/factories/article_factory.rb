FactoryBot.define do
  factory :article do
    title 'Test1'
    likes 100
    publishing DateTime.new(2018,1,19,8,37,48,'+07:00')
  end
end