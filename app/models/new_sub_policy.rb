class NewSubPolicy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  embedded_in :policy, class_name: 'NewPolicy'
  embeds_many :attributes, class_name: 'NewSubPolicyAttribute'

  validates :name, :presence => true, :uniqueness => true, :format => { :with => /^[\w\-]+$/ }

  attr_accessible :name, :attributes

  accepts_nested_attributes_for :policy, :attributes
end
