class Project < ActiveRecord::Base
  attr_accessible :description, :github_url, :title, :website_url
end
