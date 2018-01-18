require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:imgorder) }
  it { should validate_presence_of(:imglikes) }



  it { should belong_to(:article) }
end