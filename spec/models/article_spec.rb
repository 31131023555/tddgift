require 'rails_helper'

RSpec.describe Article, type: :model do

<<<<<<< HEAD
  before do
    @a1 = create(:article)
    @t1 = create(:text)
    @t2 = create(:text, textorder: 1)
    @i1 = create(:image)
    @i2 = create(:image, imgorder: 1)
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:likes) }

  it { should have_many(:texts) }

  it 'Article was published' do
    expect(@a1.is_published).to eq true
  end

  it 'Increase number of like' do
    expect(@a1.increase_like).to eq 101
  end

  it 'Return number of like now' do
    expect(@a1.show_likes).to eq 100
  end

  it 'Show text and images in order' do
    expect(@a1.show_info).to eq [@t2, @t1, @i2, @i1]
=======
  let(:article) { create(:article) }
  let(:text1) { create(:text) }
  let(:text2) { create(:text, ordering: 1) }
  let(:image1) { create(:image) }
  let(:image2) { create(:image, ordering: 1) }

  context 'Test validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:publishing) }
    it 'Test likes default' do
      expect(article.likes.is_a?(Integer)).to eq true
    end
  end

  context 'Test associations' do
    it { should have_many(:texts) }
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
>>>>>>> 47a325a... Fix some code which Mr Binh reviewed except cant ignore idea
  end

end