class Post < ActiveRecord::Base
	belongs_to :user

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    #validates_attachment_content_type :avatar, :content_type => /\Avideo\/.*\Z/
    do_not_validate_attachment_file_type :avatar

    has_attached_file :video, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    do_not_validate_attachment_file_type :video

    has_attached_file :video, :styles => {
    :medium => { :geometry => "640x480", :format => 'mp4' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
    }, :processors => [:ffmpeg]

    has_attached_file :audio
    do_not_validate_attachment_file_type :audio

    has_attached_file :file
    do_not_validate_attachment_file_type :file

    has_many :comments

    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }

    acts_as_likeable
end
