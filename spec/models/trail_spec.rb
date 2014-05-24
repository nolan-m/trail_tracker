require 'spec_helper'

describe Trail do
	it { should have_and_belong_to_many :badges }
	it { should validate_presence_of :name }
	it { should validate_presence_of :length }
	it { should validate_presence_of :difficulty }
	it { should validate_presence_of :description }

end
