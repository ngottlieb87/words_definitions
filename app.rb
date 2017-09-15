require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require ('./lib/words')
require ('pry')
require ('capybara')

get('/') do
  @list = Word.all
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
  @id = params[:id]
  @display_word = Word.find(@id)
  @definition_list = Kids_def.def_all
  erb(:output)
end

post('/output/:id') do
  @list = Word.all
  @definition_list = Kids_def.def_all
  definition = params["definition"]
  @id = params[:id]
  new_def = Kids_def.new({:definition=>definition, :definition_id => @id})
  new_def.def_save
  @definition_list = Kids_def.def_all
  @display_word = Word.find(@id)
  erb(:output)
end
