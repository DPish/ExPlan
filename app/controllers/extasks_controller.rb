class ExtasksController < ApplicationController
	
	def index
		@extasks = Extask.all
	end

	def new
		@extask = Extask.new
	end

	def create
		Extask.create(extask_params)
		redirect_to extasks_path
	end

	private



	def extask_params
		params.require(:extask).permit(:reps, :pounds, :sets, :exercise_id)
	end

end