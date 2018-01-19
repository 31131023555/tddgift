require 'rails_helper'

RSpec.describe Text, type: :model do
  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:textorder) }
  it { should validate_presence_of(:textlikes) }

  it 'Increase number of like' do
    text = Text.new(headline: 'text1', textorder: 2, passage: 'sdfcvsfdsd', textlikes: 10, article_id: 1)
    text.save
    expect(text.increase_like).to eq 11
  end

  it 'Return number of like now' do
    text = Text.new(headline: 'text1', textorder: 2, passage: 'sdfcvsfdsd', textlikes: 10, article_id: 1)
    text.save
    expect(text.show_like).to eq 10
  end

  it { should belong_to(:article) }
end