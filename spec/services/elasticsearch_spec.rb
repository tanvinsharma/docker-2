RSpec.describe 'Elasticsearch test' do
	# require 'elasticsearch'
	let(:client) { Elasticsearch::Client.new url: 'https://localhost:9200', log: true	}
	# client.cluster.health
	# expect(client.cluster.health.status).to eq("green")
	specify do
		expect(client.cluster.health.status).to eq("green")
	end
end