class TeamController < ApplicationController
  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
	search = { id: Integer(params[:id]) } if params[:id].to_i > 0
	search ||= { slug: params[:id] }
	@member = Member.find_by(search)
  end
end
