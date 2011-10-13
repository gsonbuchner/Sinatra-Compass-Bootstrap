require	'rubygems'
require 'bundler'

Bundler.require

require './app.rb'

configure do
  set :scss, {:style => :compact, :debug_info => false}
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

run Calavera 
