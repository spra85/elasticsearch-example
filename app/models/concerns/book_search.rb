module BookSearch
  extend ActiveSupport::Concern

  included do
    include Tire::Model::Search

    mapping do
      indexes :id, type: :integer
      indexes :fiction?, type: :boolean, index: :not_analyzed # Boolean example
      indexes :chapter_count, type: :integer # Integer example
      indexes :price, type: :float # Float example
      indexes :published_at, type: :date # Date example
      indexes :location, type: :geo_point, lat_lon: true # Geo example

      # Nested document examples
      indexes :chapter do
        indexes :title
      end

      indexes :author do
        indexes :first_name, type: :string, analyzer: :keyword
        indexes :last_name, type: :string, analyzer: :keyword
      end
    end

    def to_indexed_json
      {}
    end
  end
end