require 'rails_helper'

RSpec.describe Article, type: :model do

  let(:article) { create(:article) }
  let(:text1) { create(:text) }
  let(:text2) { create(:text, ordering: 1) }
  let(:image1) { create(:image) }
  let(:image2) { create(:image, ordering: 1) }

  context 'Test validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:publishing) }
  end

  context 'Test associations' do
    it { should have_many(:texts) }
    it { should have_many(:images) }
  end

  context 'Test methods' do
    it 'Article was published' do
      expect(article.is_published).to eq true
    end

    it 'Increase number of like' do
      before_increase_like = article.likes
      article.increase_like
      expect(article.likes).to eq (before_increase_like + 1)
    end

    it 'Show text in order' do
      expect(article.texts).to eq [text2, text1]
    end

    it 'Show images in order' do
      expect(article.images).to eq [image2, image1]
    end
  end

end