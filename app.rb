class Calavera < Sinatra::Base

  get '/' do
    File.read(File.join('views', 'index.html'))
  end
  
  get '/stylesheets/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss(:"stylesheets/#{params[:name]}")
  end

end
