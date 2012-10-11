class NewPolicy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  embeds_many :subpolicies, class_name: 'NewSubPolicy'

  validates_presence_of :name
  validates_uniqueness_of :name  
  validates_format_of :name, with: /\A\w+\Z/

  attr_accessible :name, :subpolicies
end
