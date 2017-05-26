require 'sendgrid-ruby'


sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

response = sg.client.contactdb.lists.get()
puts response.status_code
puts response.body
puts response.headers
