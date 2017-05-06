require 'elasticsearch/transport'
require 'json'

client = Elasticsearch::Client.new url: 'https://avnadmin:hkqa8xkbvjmt5c13@brainboost.brainboost-b168.aivencloud.com:17947',
                          transport_options: { ssl: { ca_file: 'certificate_elastic.txt' } }
a = {"call-id" => "3ad12f49602e7c07f3c9396d54074240-1", "status"=>"ok", "from"=>"35314547145", "to"=>"35315295120", "call-request"=>"2017/05/06 11:49:54", "call-direction"=>"in", "call-price"=>"0.004650", "call-rate"=>"0.00450000", "call-duration"=>"62", "call-start"=>"2017/05/06 11:49:55", "call-end"=>"2017/05/06 11:50:56"}
response = client.perform_request 'PUT', 'bbivr/call/' + a["call-id"],{},a
puts response.inspect
