class ExercisesController < ApplicationController
	
	def index
		@exercises = Exercise.all
	end

	def new
		@exercise = Exercise.new
	end

	def create
		Exercise.create(exercise_params)
		redirect_to exercises_path
	end

	private



	def exercise_params
		params.require(:exercise).permit(:name, :explan_id)
	end

end