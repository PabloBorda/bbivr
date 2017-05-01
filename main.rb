require 'sinatra'
require 'elasticsearch'

    set :port, 8000

    get '/' do
      

client = Elasticsearch::Client.new("https://5915995b3720dbdbfb8704c7f7dbd6c8.us-east-1.aws.found.io:9243
")

client.cluster.health

client.index index: 'my-index', type: 'my-document', id: 1, body: { title: 'Test' }

client.indices.refresh index: 'my-index'

client.search index: 'my-index', body: { query: { match: { title: 'test' } } }
    end