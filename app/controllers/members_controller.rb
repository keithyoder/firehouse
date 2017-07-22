class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @department = Department.find_by_id(params[:department_id])
    @members = @department.members
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    department = Department.find_by_id(params[:department_id])
    @member = department.members.build
    @member.state_id = @member.department.state_id
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    #department = Department.find_by_id(params[:department_id])
    @member = Member.create(params[:member])

    respond_to do |format|
      if @member.save
        format.html { redirect_to [@member.department, @member], notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    department = Department.find_by_id(params[:department_id])
    @member = department.member.find_by_id(params[:id])
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to [@member.department, @member], notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to department_members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(member: {})
      #params.require(:member).permit(:department_id, :name, :address, :address2, :city, :state_id, :zip, :home_phone, :cell_phone, :dept_cell_phone, :social_security, :drivers_license, :birth_date, :bloodtype_id, :email, :alarm_roster, :attendance_roster, :tax_credit)
    end
end
