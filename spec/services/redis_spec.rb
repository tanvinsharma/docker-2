RSpec.describe 'Redis test' do
  specify do
    redis = Redis.new(host: 'redis', port: 6379)
    redis.set("key", "val")
    expect(redis.get("key")).to eq("val")
  end
end