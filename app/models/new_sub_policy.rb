class NewSubPolicy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  embedded_in :policy, class_name: 'NewPolicy'
  embeds_many :attributes, class_name: 'NewSubPolicyAttribute'

  validates_presence_of :name  
  validates_format_of :name, with: /\A\w+\Z/

  attr_accessible :name, :attributes

end
