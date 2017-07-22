json.extract! member, :id, :department_id, :name, :address, :address2, :city, :state_id, :zip, :home_phone, :cell_phone, :dept_cell_phone, :social_security, :drivers_license, :birth_date, :bloodtype_id, :email, :alarm_roster, :attendance_roster, :tax_credit, :created_at, :updated_at
json.url member_url(member, format: :json)
