class User < ActiveRecord::Base
  has_secure_password
  belongs_to :current_relationship, class_name: 'Relationship', foreign_key: 'relationship_id'
end
