RSpec.describe 'Elasticsearch test' do
	let(:client) { client = Elasticsearch::Client.new(log: false) }
	specify do
		expect(client.cluster.health.status).to eq(200)
	end
end

# require 'elasticsearch'

# client = Elasticsearch::Client.new(log: true)

# # if you specify Elasticsearch host
# # client = Elasticsearch::Client.new url: 'http://localhost:9200', log: true

# # client.transport.reload_connections!

# client.cluster.health