require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:imgorder) }
  it { should validate_presence_of(:imglikes) }

  it 'Increase number of like' do
    img = Image.new(headline: 'img2', imgorder: 3, url: '1698dadscxzc', imglikes: 12, article_id: 1)
    img.save
    expect(img.increase_like).to eq 13
  end

  it 'Show number of like now' do
    img = Image.new(headline: 'img2', imgorder: 3, url: '1698dadscxzc', imglikes: 12, article_id: 1)
    img.save
    expect(img.show_like).to eq 12
  end

  it { should belong_to(:article) }
end