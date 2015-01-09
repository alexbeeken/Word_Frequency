require('sinatra')
require('sinatra-contrib')

get('/') do
  erb(:home)
end

get('/show_results') do
  @input_string = params.fetch('input_string')
  @findme = params.fetch('findme')
  @results = @input_string.word_frequency(@findme)
  erb(:home)
end
