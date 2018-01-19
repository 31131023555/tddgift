require 'rails_helper'

RSpec.describe Article, type: :model do

  before do
    @a1 = create(:article)
    @t1 = create(:text, article_id: 27)
    @t2 = create(:text, textorder: 1, article_id: 27)
    @i1 = create(:image, article_id: 27)
    @i2 = create(:image, imgorder: 1, article_id: 27)
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:likes) }

  it { should have_many(:texts) }

  it 'Article was published' do
    expect(@a1.is_published).to eq true
  end

  it 'Finishing publishing status' do
    expect(@a1.publish).to eq @a1.to_s
  end

  it 'Increase number of like' do
    expect(@a1.increase_like).to eq 101
  end

  it 'Return number of like now' do
    expect(@a1.show_likes).to eq 100
  end

  it 'Show text and images in order' do
    expect(@a1.show_info).to eq [@t2, @t1, @i2, @i1]
  end

end