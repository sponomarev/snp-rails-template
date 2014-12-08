## Application configuration
environment "config.time_zone = 'Moscow'

    # Application locale
    I18n.enforce_available_locales = true
    I18n.default_locale = :ru
    I18n.locale = :ru

    # Disable unnecessary generators
    config.generators do |g|
      g.assets = false
      g.helper = false
    end
"

## Gemfile
# Prepare defaults
uncomment_lines 'Gemfile', /therubyracer/
gsub_file 'Gemfile', /#.*\n/, ''
inject_into_file 'Gemfile', "\n\n", after: "gem 'pg'", verbose: true

# Remove unused default gems
%w(sdoc spring sqlite).each do |gem_name|
  gsub_file 'Gemfile', /^.*#{gem_name}.*$/, ''
end
