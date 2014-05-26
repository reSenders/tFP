class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	:storage => :s3,
  :bucket  => ENV['theFaradayProject']
  validates :image, presence: true
  validates :description, presence: true
end
end
