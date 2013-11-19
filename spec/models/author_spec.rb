require "spec_helper"

describe Author do
  context "associations" do
    it { should have_many :books }
  end

  context "validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end
end