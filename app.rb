require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')
require('./lib/highlight')

# Set port for compatability with Nitrous.IO
configure :development do
set :bind, '0.0.0.0'
set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end

get('/') do
  erb(:wf_form)
end

get('/wf_result') do
  @input_string = params.fetch('input_string')
  @findme = params.fetch('findme')
  @final_count = (@input_string.word_frequency(@findme))
  @input_string = @input_string.highlight(@findme)
  
  if @final_count == 0
    @results_message = "There are no instances of the word #{@findme} (<em>not counting typos!!</em>) inside of #{@input_string}."

  elsif @final_count == 1
    @results_message = "There is one instance of the word #{@findme} (<em>not counting typos!!</em>) inside of #{@input_string}."
  
  else
    @results_message = "There are #{@final_count} instances of the word \"#{@findme}\" inside of \"#{@input_string}.\""
    
  end
  erb(:wf_result)
end
