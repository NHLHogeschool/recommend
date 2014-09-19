class Recommendation < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  belongs_to :recipient, class_name: User

  accepts_nested_attributes_for :album
end
