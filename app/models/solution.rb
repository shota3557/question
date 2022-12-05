class Solution < ApplicationRecord
  belongs_to :cause
  validates :content, presence: true
end
