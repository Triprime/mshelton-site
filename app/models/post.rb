class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy

  scope :featured, -> { where(featured: true) }
  scope :published, -> { where("published_at <= ?", Time.now).order("published_at DESC") }
  default_scope -> { where("published_at <= ?", Time.now).order("published_at DESC") }
  attr_accessible :author, :body, :featured, :published_at, :title

  validates :author, :body, presence: true

  validates :title, 
              length: { in: 6..60 },
              presence: true,
              uniqueness: true

  
  # this validation breaks the app...
  validate :published_at_is_future, on: :create

  private
  
  def published_at_is_future
    unless published_at >= Time.now  
      errors.add(:published_at, "Published at date must be future.")  
    end
  end

end
