require "spec_helper"

describe Book do
  context "associations" do
    it { should belong_to :author }
    it { should have_many :chapters }
  end

  context "validations" do
    it { should validate_presence_of :author_id }
    it { should validate_presence_of :price }
    it { should validate_presence_of :published_at }
    it { should validate_presence_of :latitude }
    it { should validate_presence_of :longitude }
  end
end