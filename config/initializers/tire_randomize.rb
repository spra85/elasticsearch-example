# Function Score query with random_score added to ElasticSearch as of 0.90.4, will not be supported by tire gem
module Tire
  module Search
    class Query
      def randomize
        @value = { function_score: { random_score: {} } }
      end
    end
  end
end