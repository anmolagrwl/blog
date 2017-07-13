require 'elasticsearch/model'
Elasticsearch::Model.client = Elasticsearch::Client.new(host: ENV.fetch('ELASTIC_URL', 'localhost'))
