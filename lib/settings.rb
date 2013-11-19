class Settings < Settingslogic
  source "#{Rails.root}/config/application.yml"
  namespace Rails.env

  if File.exist?("#{Rails.root}/config/application.local.yml")
    instance.deep_merge!(Settings.new("#{Rails.root}/config/application.local.yml"))
  end
end
