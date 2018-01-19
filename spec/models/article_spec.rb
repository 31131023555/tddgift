require 'rails_helper'

RSpec.describe Article, type: :model do

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
  end

end