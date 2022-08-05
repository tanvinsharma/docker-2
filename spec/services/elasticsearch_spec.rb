RSpec.describe 'Elastic Search test' do
  specify do
    client = Elasticsearch::Client.new(log: true)
    client.cluster.health
  end
end