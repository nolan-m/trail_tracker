require 'spec_helper'

describe User do
  it { should have_many :badges }
	it { should have_many :completeds }
end
