Gem::Specification.new do |s|
  s.name        = 'dropthe'
  s.version     = '0.1.1'
  s.summary     = 'Ruby client for DropThe open data API'
  s.description = 'Access open datasets for movies, series, crypto, companies, and people from DropThe. Query entities, streaming availability, and knowledge graph relationships.'
  s.authors     = ['Arnaud Leroy']
  s.email       = 'dropthehq@gmail.com'
  s.homepage    = 'https://dropthe.org'
  s.license     = 'MIT'
  s.files       = ['lib/dropthe.rb']
  s.required_ruby_version = '>= 2.5'

  s.metadata = {
    'homepage_uri'      => 'https://dropthe.org',
    'source_code_uri'   => 'https://github.com/arnaudleroy-studio/dropthe-ruby',
    'documentation_uri' => 'https://dropthe.org/data/',
    'bug_tracker_uri'   => 'https://github.com/arnaudleroy-studio/dropthe-ruby/issues',
    'changelog_uri'     => 'https://github.com/arnaudleroy-studio/dropthe-ruby/blob/main/CHANGELOG.md'
  }
end
