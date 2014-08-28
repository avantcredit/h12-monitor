Gem::Specification.new do |s|
  s.name        = 'h12_monitor'
  s.version     = '0.1.0'
  s.date        = '2014-08-27'
  s.summary     = "Monitors"
  s.description = 'Watch for "stuck" Heroku dynos reporting constant H12s and selectively restart them.'
  s.authors     = ['Ryan Twomey', 'MissingHandle']
  s.email       = 'rtwomey@gmail.com'
  s.files       = ["lib/h12_monitor.rb"]
  s.homepage    = 'https://github.com/rtwomey/h12-monitor'
  s.license     = 'MIT'
end
