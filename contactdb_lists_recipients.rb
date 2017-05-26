require 'sendgrid-ruby'


sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

data = JSON.parse('[
  "ZXhhbXBsZTFAZXhhbXBsZS5qcA==",
  "ZXhhbXBsZTJAZXhhbXBsZS5qcA=="
]')
list_id = "1422858"
response = sg.client.contactdb.lists._(list_id).recipients.post(request_body: data)
puts response.status_code
puts response.body
puts response.headers
