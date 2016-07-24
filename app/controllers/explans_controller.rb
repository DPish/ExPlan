class ExplansController < ApplicationController
	before_filter :authenticate

	def index
		@explans = Explan.all

		if params[:search]
			@explans = Explan.search(params[:search]).order("created_at DESC")

		else
			@explans = Explan.all.order("created_at DESC")
		end

	end

	def new 
		@explan = Explan.new

	end
	def create 
		current_user.explans.create(explan_params)
		redirect_to explans_path
	end

	private
		def set_explan
			@explan = Explan.find(params[:id])

		end
		
		def explan_params
			params.require(:explan).permit(:workout)
		end
end