class Task < ApplicationRecord
  mount_uploader :picture, TaskPictureUploader
  has_many :causes
end  
