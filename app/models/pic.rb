class Pic < ActiveRecord::Base
  belongs_to :picable, polymorphic: true
  attr_accessible :name
end
