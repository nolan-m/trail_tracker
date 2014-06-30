require 'spec_helper'

describe Trail do
	it { should have_and_belong_to_many :badges }
	it { should belong_to :loop }
	it { should validate_presence_of :name }
  it { should validate_presence_of :distance }
	it { should validate_presence_of :summit }
	it { should validate_presence_of :difficulty }
	it { should validate_presence_of :description }
	it { should validate_uniqueness_of :name }
end
