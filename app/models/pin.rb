class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	:storage => :s3,
  :bucket => 'thefaradayproject',
  :s3_credentials => {:access_key_id => ENV['AKIAIDJD2EO45ITGJ3MQ'], :secret_access_key => ENV['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']}
end
