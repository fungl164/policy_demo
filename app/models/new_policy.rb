class NewPolicy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  embeds_many :subpolicies, class_name: 'NewSubPolicy'

  validates :name, :presence => true, :uniqueness => true, :format => { :with => /^[\w\-]+$/ }

  attr_accessible :name, :subpolicies

  accepts_nested_attributes_for :subpolicies
end
