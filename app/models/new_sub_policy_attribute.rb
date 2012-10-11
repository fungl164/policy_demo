class NewSubPolicyAttribute
  include Mongoid::Document
  include Mongoid::Timestamps

  field :key, type: String
  field :value, type: String

  embedded_in :subpolicy, class_name: 'NewSubPolicy'

  validates_presence_of   :key  
  validates_uniqueness_of :key
  validates_format_of     :key, with: /\A\w+\Z/

  attr_accessible :key, :value

end
