FactoryBot.define do
  factory :image do
    headline 'Flying'
    ordering 2
    url { File.new("#{Rails.root}/public/ss.png") }
    likes 20
    article_id 1
  end
end