require 'sendgrid-ruby'

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

##################################################
# Get all Sender Identities #
# GET /senders #

response = sg.client.senders.get()
puts response.status_code
puts response.body
puts response.headers


