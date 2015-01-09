require('sinatra')
require('sinatra/reloader')

# Set port for compatability with Nitrous.IO
configure :development do
set :bind, '0.0.0.0'
set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end

get('/') do
  erb(:home)
end

get('/show_results') do
  @input_string = params.fetch('input_string')
  @findme = params.fetch('findme')
  @results = @input_string.word_frequency(@findme)
  erb(:home)
end
