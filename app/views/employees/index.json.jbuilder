json.array!(@employees) do |employee|
  json.extract! employee, :name, :email, :room_id, :department_id
  json.url employee_url(employee, format: :json)
end
