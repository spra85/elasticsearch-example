Tire.configure do
  url Settings.tire.url
  logger (Rails.env.development? || Rails.env.test?) ? Rails.root + "log/tire_#{Rails.env}.log" : $stdout
end

Tire::Model::Search.index_prefix("#{Rails.application.class.parent_name.underscore}_#{Rails.env}")