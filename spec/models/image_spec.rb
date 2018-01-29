require 'rails_helper'

RSpec.describe Image, type: :model do

  let(:image) { create(:image) }

  context 'Test validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:ordering) }
    it { should have_attached_file(:url) }
    it { should validate_attachment_presence(:url) }
    it { should validate_attachment_content_type(:url).
        allowing('image/png', 'image/gif').
        rejecting('text/plain', 'text/xml') }
    it { should validate_attachment_size(:url).
        less_than(2.megabytes) }
  end

  context 'Test associations' do
    it { should belong_to(:article) }
  end

  context 'Test methods' do
    it 'Increase number of likes' do
      before_increase_like = image.likes
      image.increase_like
      expect(image.likes).to eq (before_increase_like + 1)
    end
  end

end