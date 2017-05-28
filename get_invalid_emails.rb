require 'sendgrid-ruby'

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

##################################################
# Retrieve all invalid emails #
# GET /suppression/invalid_emails #

params = JSON.parse('{"start_time": 1, "limit": 10, "end_time": 1495986238, "offset": 0}')
response = sg.client.suppression.invalid_emails.get(query_params: params)
puts response.status_code
puts response.body
puts response.headers
