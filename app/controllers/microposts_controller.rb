class MicropostsController < ApplicationController
require 'meta-spotify'
require 'acts-as-taggable-on'
	before_filter :signed_in_user
	before_filter :correct_user, only: :destroy

def create
    @micropost = current_user.microposts.build(params[:micropost])
    
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to @micropost
    else
      render 'shared/_micropost_form'
    end
  end

	def destroy
		@micropost.destroy
		redirect_to root_path
	end

	def show
		# @micropost = current_user.microposts.build(params[:micropost])
		@micropost = current_user.microposts.find_by_id(params[:id])
		@s = YoutubeSearch.search('cats').first['video_id']
		# @searchnew = MetaSpotify::Track.search("coldplay").first
		@searchnew2 = MetaSpotify::Track.search('coldplay') 
	end


	private 

		def correct_user
			@micropost = current_user.microposts.find_by_id(params[:id])
			redirect_to root_path if @micropost.nil?
		end

end
