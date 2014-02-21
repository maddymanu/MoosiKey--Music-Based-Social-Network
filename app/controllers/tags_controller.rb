class TagsController < ApplicationController
	require 'acts-as-taggable-on'

	before_filter :signed_in_user
	before_filter :correct_user, only: :destroy

	def show
		@m = Micropost.tagged_with("awesome")
	end

	def index
		
	end

	def happy
		@m = Micropost.tagged_with("happy")
	end

	def sad
		
	end

	def emotional
		
	end


	private 

		def correct_user
			@micropost = current_user.microposts.find_by_id(params[:id])
			redirect_to root_path if @micropost.nil?
		end

end