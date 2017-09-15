require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require ('./lib/words')
require ('pry')
require ('capybara')

get('/') do
  @list = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  new_word = Word.new({:word=> word })
  new_word.save()
  @list= Word.all()
  erb(:input)
end
get('/output/:id') do
  @list = Word.all()
  @id = params[:id]
  @display_word = Word.find(@id)
  erb(:output)
end
