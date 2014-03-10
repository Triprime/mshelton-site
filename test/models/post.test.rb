require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def test_author_is_present
    post = Post.new author: "Ben"
    assert post.valid?
  end

  def test_post_is_invalid_when_author_is_not_present
    post = Post.new body: "Test"
    assert post.invalid?
  end

  def test_must_has_a_title
    post = Post.new title: nil
    assert post.invalid?
  end

end