require 'sendgrid-ruby'

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

##################################################
# Retrieve all bounces #
# GET /suppression/bounces #

params = JSON.parse('{"start_time": 1, "end_time": 1495986238}')
response = sg.client.suppression.bounces.get(query_params: params)
puts response.status_code
puts response.body
puts response.headers

