require 'spec_helper'

describe NewPolicy do
  it { should have_fields(:name).of_type(String) }
  
  it { should embed_many(:subpolicies).of_type(NewSubPolicy) }

  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:subpolicies) }

  it { should validate_presence_of(:name).on(:create) }
  it { should validate_presence_of(:name).on(:update) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_format_of(:name).to_allow("myname").not_to_allow("$my name!") }

  it { should be_timestamped_document }
end
