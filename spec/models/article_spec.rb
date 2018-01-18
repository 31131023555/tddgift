require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:likes) }

    it 'Article was published' do
      article = Article.new(title: 'IsPublish', likes: 20)
      article.save
      expect(article.is_published).to eq true
    end

    it 'Finishing publishing status' do
      article = Article.new(title: 'Publish', likes: 25)
      article.save
      expect(article.publish).to eq article.to_s
    end

    it 'Increase number of like' do
      article = Article.new(title: 'Increment', likes: 27)
      article.save
      expect(article.increase_like).to eq 28
    end

    it 'Return number of like now' do
      article = Article.new(title: 'NumOfLikes', likes: 30)
      article.save
      expect(article.show_likes).to eq 30
    end
  end

  it 'Show text and images in order' do
    article = Article.new(title: 'NumOfLikes', likes: 30)
    article.save
    text1 = Text.new(headline: 'text1', textorder: 2, passage: 'sdfcvsfdsd', textlikes: 10, article_id: 1)
    text1.save
    text2 = Text.new(headline: 'text2', textorder: 1, passage: '1698dcxzc', textlikes: 22, article_id: 1)
    text2.save
    img1 = Image.new(headline: 'img2', imgorder: 3, url: '1698dadscxzc', imglikes: 12, article_id: 1)
    img1.save
    expect(article.show_info).to eq [text2, text1, img1]
  end

  it { should have_many(:texts) }
end