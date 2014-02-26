class Project < ActiveRecord::Base
  attr_accessible :description, :github_url, :title, :website_url, :tags_attributes
  
  has_many :tags, as: :taggable
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true
  
  has_many :pics, as: :picable

end
