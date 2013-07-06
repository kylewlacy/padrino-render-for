version = File.read(File.expand_path('../VERSION', __FILE__)).strip

Gem::Specification.new do |gem|
  gem.name        = 'padrino-render-for'
  gem.version     = version
  gem.date        = '2013-07-05'
  gem.summary     = 'DRYer rendering method for Padrino'
  gem.description = 'DRYer rendering method for Padrino, mainly used for templates for controllers'
  gem.authors     = ['Kyle Lacy']
  gem.email       = 'kylelacy@me.com'
  gem.files       = ['lib/padrino-render-for.rb']
  gem.homepage    = 'https://github.com/kylewlacy/padrino-render-for'

  gem.add_dependency('padrino')
end
