require 'sendgrid-ruby'


sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])


##################################################
# Create a Campaign #
# POST /campaigns #

data = JSON.parse('{
  "categories": [
    "spring line"
  ], 
  "custom_unsubscribe_url": "https://www.redish.jp",
  "html_content": "<html><head><title></title></head><body><p>Check out our spring line!</p><p>[unsubscribe]</p></body></html>",
  "list_ids": [1422858],
  "plain_content": "Check out our spring line!\n[unsubscribe]",
  "sender_id": 134121,
  "subject": "New Products for Spring!",
  "title": "March Newsletter"
}')
response = sg.client.campaigns.post(request_body: data)
puts response.status_code
puts response.body
puts response.headers

campaign_id = JSON.parse(response.body)['id']

response = sg.client.campaigns._(campaign_id).schedules.now.post()
puts response.status_code
puts response.body
puts response.headers
