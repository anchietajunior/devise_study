json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :email, :phone, :birthday, :organization_id
  json.url customer_url(customer, format: :json)
end
