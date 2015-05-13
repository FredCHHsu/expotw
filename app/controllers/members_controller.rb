class MembersController < ApplicationController

before_action :set_member, only:[:show, :edit, :update, :destroy]
	def index
		@members = Member.all
	end

	def show		
	end

	def new
		@member = Member.new
	end

	def create
		@member = Member.new(member_params)

		respond_to do |format|
			if @member.save
				format.html { redirect_to members_path(@member), notice: "Member was successfully created!" }
			else
				format.html { redirect_to new_member_path }
			end
		end
	end

	def edit	
	end

	def update
		respond_to do |format|
			if @member.update(member_params)
				format.html { redirect_to members_path(@member), notice: "Member was successfully update!" }
			else
				format.html { redirect_to edit_member_path(@member) }
			end
		end
	end

	def destroy
		@member.destroy
		respond_to do |format|
			format.html { redirect_to members_path, notice: "Member was successfully destroy"}
		end
	end

	private

	def set_member
		@member = Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(:title, :name)
	end

end
