class ContactMessage < ActiveRecord::Base
  attr_accessible :body, :email, :name, :subject

  validates :name, :email, :subject, :body, presence: true

  after_create :send_contact_email

  private
  
  def send_contact_email
    ContactMailer.submission(self).deliver
  end
end
