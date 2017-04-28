require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  erb(:words_form)
end

post('/words') do
  word = params.fetch('word')
  Word.new({:word => word}).save
  @words = Word.all
  erb(:success)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end
