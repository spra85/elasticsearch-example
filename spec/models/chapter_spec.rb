require "spec_helper"

describe Chapter do
  context "associations" do
    it { should belong_to :book }
  end

  context "validations" do
    it { should validate_presence_of :title }
  end
end