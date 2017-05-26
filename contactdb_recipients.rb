require 'sendgrid-ruby'
sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

data = JSON.parse('[
  {
    "email": "yasuo.yusuke@gmail.com",
    "first_name": "Yusuke",
    "last_name": "Yasuo"
  }, 
  {
    "email": "yasuoyusuke@yahoo.co.jp",
    "first_name": "Yusuke",
    "last_name": "Yasuo"
  }
]')
response = sg.client.contactdb.recipients.post(request_body: data)
puts response.status_code
puts response.body
puts response.headers
