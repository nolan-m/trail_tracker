require 'spec_helper'

describe Completed do
  it { should belong_to :user }
  it { should belong_to :badge }
end
