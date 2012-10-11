require 'spec_helper'

describe NewSubPolicy do
  it { should have_fields(:name).of_type(String) }
  it { should be_embedded_in(:policy) } # .of_type(NewPolicy)
  it { should embed_many(:attributes).of_type(NewSubPolicyAttribute) }

  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:attributes) }

  it { should validate_presence_of(:name).on([:create, :update]) }
  it { should validate_format_of(:name).to_allow("myname").not_to_allow("$my name!") }

  it { should be_timestamped_document } 

  it "accepts nested attributes" do
    atributes_attributes = %w{ val1 val2 val3 }.each do
      
      end

  end
end
