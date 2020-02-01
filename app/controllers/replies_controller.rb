class RepliesController < ApplicationController

	def create
		@reply = Reply.new
		@reply.body = params[:reply][:body]
		@reply.comment_id = params[:comment_id]
		@reply.save
		@blog  = Comment.find(params[:comment_id]).blog
		redirect_to @blog
	end

end
