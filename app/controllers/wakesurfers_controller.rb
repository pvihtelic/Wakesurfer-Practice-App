class WakesurfersController < ApplicationController

	def index
		@wakesurfers = Wakesurfer.all
	end

	def show
		@wakesurfer = Wakesurfer.find_by_id(params[:id])
	end

	def new
		@wakesurfer = Wakesurfer.new
	end

	def create
		@wakesurfer = Wakesurfer.create(params[:wakesurfer])
		if @wakesurfer.save
			redirect_to wakesurfers_url
		else
			render 'new'
		end
	end

	def edit
		@wakesurfer = Wakesurfer.find_by_id(params[:id])
	end

	def update
		@wakesurfer = Wakesurfer.find_by_id(params[:id])
		@wakesurfer.url = params[:wakesurfer][:url]
		@wakesurfer.title = params[:wakesurfer][:title]
		if @wakesurfer.save
			redirect_to wakesurfers_url
		else
			render 'new'
		end
	end	

	def destroy
		p = Wakesurfer.find_by_id(params[:id])
		p.destroy
		redirect_to wakesurfers_url
	end
end