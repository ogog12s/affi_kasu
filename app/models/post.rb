class Post < ApplicationRecord
  belongs_to :account
  belongs_to :parent, class_name: 'Post', optional: true
  has_many :replies, class_name: 'Post', foreign_key: 'post_id'

  validates :content, presence: true

  def content
    <<~CONTENT
      #{affiliate.video.description}

      #{affiliate.video.downloaded_path}
    CONTENT
  end

  def reply_content
    affiliate.link
  end
end
