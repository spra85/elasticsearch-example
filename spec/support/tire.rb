RSpec.configure do |config|
  INDEXED_MODELS = [Book]

  config.before(:suite) do
    INDEXED_MODELS.each do |klass|
      klass.tire.index.delete
      klass.create_elasticsearch_index
    end
  end

  config.before(:each, elasticsearch: true) do
    INDEXED_MODELS.each do |klass|
      klass.tire.index.delete
      klass.create_elasticsearch_index
    end
  end
end