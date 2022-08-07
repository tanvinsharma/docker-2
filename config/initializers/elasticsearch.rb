# config = {
#     host: "http://localhost:9200/"
# }

# if File.exists?("config/elasticsearch.yml")
#   config.merge!(YAML.load_file("config/elasticsearch.yml")[Rails.env].deep_symbolize_keys)
# end

# Elasticsearch::Model.client = Elasticsearch::Client.new(config)

config = {
  transport_options: { request: { timeout: 5 } }
}
if File.exist?('config/elasticsearch.yml')
  template = ERB.new(File.new('config/elasticsearch.yml').read)
  processed = YAML.safe_load(template.result(binding))
  config.merge!(processed[Rails.env].symbolize_keys)
end

Elasticsearch::Model.client = Elasticsearch::Client.new(config)
