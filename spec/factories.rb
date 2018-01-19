FactoryBot.define do

  factory :article do
    title 'Test1'
    likes 100
  end

  factory :text do
    headline 'JustType'
    textorder 2
    passage 'Type something'
    textlikes 10
    article_id 1
  end

  factory :image do
    headline 'Flying'
    imgorder 2
    url 'Type some url'
    imglikes 20
    article_id 1
  end
end