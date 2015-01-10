require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')
require('./lib/highlight')

=begin
# Set port for compatability with Nitrous.IO
configure :development do
set :bind, '0.0.0.0'
set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end
=end

get('/') do
  erb(:wf_form)
end

get('/wf_result') do
  @input_string = params.fetch('input_string')
  @findme = params.fetch('findme')
  @final_count = (@input_string.word_frequency(@findme))
  @input_string = @input_string.highlight(@findme)

  erb(:wf_result)
end
