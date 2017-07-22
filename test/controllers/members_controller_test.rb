require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { address2: @member.address2, address: @member.address, alarm_roster: @member.alarm_roster, attendance_roster: @member.attendance_roster, birth_date: @member.birth_date, bloodtype_id: @member.bloodtype_id, cell_phone: @member.cell_phone, city: @member.city, department_id: @member.department_id, dept_cell_phone: @member.dept_cell_phone, drivers_license: @member.drivers_license, email: @member.email, home_phone: @member.home_phone, name: @member.name, social_security: @member.social_security, state_id: @member.state_id, tax_credit: @member.tax_credit, zip: @member.zip } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { address2: @member.address2, address: @member.address, alarm_roster: @member.alarm_roster, attendance_roster: @member.attendance_roster, birth_date: @member.birth_date, bloodtype_id: @member.bloodtype_id, cell_phone: @member.cell_phone, city: @member.city, department_id: @member.department_id, dept_cell_phone: @member.dept_cell_phone, drivers_license: @member.drivers_license, email: @member.email, home_phone: @member.home_phone, name: @member.name, social_security: @member.social_security, state_id: @member.state_id, tax_credit: @member.tax_credit, zip: @member.zip } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
