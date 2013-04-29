class QscoresController < ApplicationController

	# GET /qscores/upvote/:id
	def upvote
		Qscore.upvote_method(params[:id])
		redirect_to resources_path
	end

end
