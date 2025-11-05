class Report < ApplicationRecord
  belongs_to :user

  validates :report_date, presence: true
  validates :content_work, :content_learning, :content_issue, presence: true
end
