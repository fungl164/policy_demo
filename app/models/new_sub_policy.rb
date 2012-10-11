class NewSubPolicy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_one :policy_domain, class_name: 'NewPolicyDomain'
  embedded_in :policy, class_name: 'NewPolicy'
  embeds_many :attributes, class_name: 'NewSubPolicyAttribute'

  validates :name, :presence => true, :uniqueness => true, :format => { :with => /^[\w\-]+$/ }

  attr_accessible :name, :policy, :policy_domain, :attributes

  accepts_nested_attributes_for :policy, :policy_domain, :attributes
end

class NewPolicyDomain
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  validates :name, :presence => true, :uniqueness => true, :format => { :with => /^[\w\-]+$/ }

  attr_accessible :name
end