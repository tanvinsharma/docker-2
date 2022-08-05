RSpec.describe Article, elasticsearch: true, :type => :model do
  before do 
    Article.create(title: "title") 
  end

  specify do
    expect(Article.all).to all(be_a(Article))
  end

  it 'search is working' do
    Article.__elasticsearch__.refresh_index! 
    expect(Article.__elasticsearch__.search 'title'.total.value).to eq(1)
  end
end