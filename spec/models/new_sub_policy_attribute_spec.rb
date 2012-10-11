require 'spec_helper'

describe NewSubPolicyAttribute do

  it { should have_fields(:key, :value).of_type(String) }

  it { should allow_mass_assignment_of(:key) }
  it { should allow_mass_assignment_of(:value) }

  it { should validate_presence_of(:key) }
  it { should validate_uniqueness_of(:key) }
  it { should validate_format_of(:key).to_allow("mykey").not_to_allow("$my key!") }

  it { should be_embedded_in(:subpolicy).of_type(NewSubPolicy) }

  it { should be_timestamped_document } 
end
