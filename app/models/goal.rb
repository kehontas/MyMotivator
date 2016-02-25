class Goal < ActiveRecord::Base
  has_many :steps, :dependent => :destroy
  accepts_nested_attributes_for :steps
  belongs_to :user
end
