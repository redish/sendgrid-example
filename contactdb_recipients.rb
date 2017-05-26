require 'sendgrid-ruby'
require 'csv'

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
csv_data = CSV.read('sendgrid.csv', headers: true)
csv_array = []
csv_data.each do |data|
  csv_array << {
    email: data['email'],
    last_name: data['last_name'],
    first_name: data['first_name']
  }
end
response = sg.client.contactdb.recipients.post(request_body: csv_array)
puts response.status_code
puts response.body
puts response.headers
