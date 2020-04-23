class LikesController < ApplicationController
    before_action :find_post

    def create
        if already_liked?
            flash[:notice] = "You can't like more than once"
          else
          @tweet.likes.create(user_id: current_user.id)
          end
          redirect_to tweet_path(@tweet)
        end
    end

    def already_liked?
        Like.where(user_id: current_user.id, tweet_id:
        params[:post_id]).exists?
      end
    
    private

    def find_post
        @tweet = Tweet.find(params[:tweet_id])
    end
end
