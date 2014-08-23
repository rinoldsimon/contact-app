class HomeController < ApplicationController

#before_action :authenticate_user!

  def index
	@post = Post.new

    if user_signed_in?
    	unless current_user.followees(User).empty?
		followees_ids = current_user.followees(User).map(&:id)
    	end
    end
    
        #get only the ids of the people current_user folllows
        #followees_ids << current_user.id
        @activities = PublicActivity::Activity.order("created_at DESC").where(owner_id: followees_ids, owner_type: "User")
   end
end
