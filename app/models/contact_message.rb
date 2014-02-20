class ContactMessage # < ActiveRecord::Base
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  # attr_accessible :body, :email, :name, :subject
  attr_accessor :body, :email, :name, :subject

  validates :name, :email, :subject, :body, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

  # after_create :send_contact_email

  # private
  
  # def send_contact_email
  #   ContactMailer.submission(self).deliver
  # end
end
