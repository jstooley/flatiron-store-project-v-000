class User < ActiveRecord::Base
  belongs_to :current_relationship, class_name: 'Relationship', foreign_key: 'relationship_id'
end
