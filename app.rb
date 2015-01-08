require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get('/form') do
  erb(:form)
end

get('/answer') do
  @word1 = params.fetch('word1')
  @word2 = params.fetch('word1').anagram(params.fetch('word2'))
  erb(:answer)
end
