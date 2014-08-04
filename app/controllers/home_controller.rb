class HomeController < ApplicationController

before_action :authenticate_user!

  def index
	@post = Post.new

	followees_ids = current_user.followees(User).map(&:id)
    
        #get only the ids of the people current_user folllows
        #followees_ids << current_user.id
        @activities = PublicActivity::Activity.where(owner_id: followees_ids, owner_type: "User")
   end
end
