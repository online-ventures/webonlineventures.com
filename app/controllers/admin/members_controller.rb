class Admin::MembersController < AdminController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /admin/members
  # GET /admin/members.json
  def index
    @members = Member.all
  end

  # GET /admin/members/1
  # GET /admin/members/1.json
  def show
  end

  # GET /admin/members/new
  def new
    @member = Member.new
  end

  # GET /admin/members/1/edit
  def edit
  end

  # POST /admin/members
  # POST /admin/members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to admin_member_url(@member), notice: 'Member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member }
      else
        format.html { render action: 'new' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/members/1
  # PATCH/PUT /admin/members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to admin_member_url(@member), notice: 'Member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/members/1
  # DELETE /admin/members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to admin_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
	  @member = Member.find(params[:id].to_i)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:id, :name)
    end
end
