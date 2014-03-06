class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author, :message

  validates :author, presence: true
  validates :message, length: {maximum: 1000},
              presence: true
  validates :post, presence: true

  before_validation :set_author_to_anon_if_blank
  default_scope -> {order('created_at ASC')}

  private

  def set_author_to_anon_if_blank
    if self.author.blank?
      self.author = 'Anonymous'
    end
  end

end
